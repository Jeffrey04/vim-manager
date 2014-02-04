#!/usr/bin/env php
<?php

define('DIR_ROOT', realpath(__DIR__));
define('DIR_BUNDLE', realpath('./default-bundles'));
define('DIR_HOME', realpath(getenv('HOME')));

define('KEY_BUNDLE', 'bundle');
define('KEY_PATHOGEN', 'pathogen');

define('TARGET_DEFAULT', 'all');
define('TARGET_INSTALL', 'install');
define('TARGET_UPDATE', 'update');
define('TARGET_CLEAN', 'clean');

call_user_func(
    function($config) {

echo TARGET_DEFAULT; ?>: <?php echo pathogen_get_target(TARGET_INSTALL); ?> <?php
        echo bundle_list_target(bundle_list($config), TARGET_INSTALL) . PHP_EOL; ?>

<?php echo pathogen_get_target(TARGET_CLEAN); ?>: <?php
        echo bundle_list_target(bundle_list($config), TARGET_CLEAN) . PHP_EOL; ?>
    if [ -d <?php echo DIR_HOME; ?>/.vim/.hg ]; then hg update null -R <?php echo DIR_HOME; ?>/.vim && rm -rf <?php echo DIR_HOME; ?>/.vim/.hg; fi
    rm -rf <?php echo DIR_HOME; ?>/.vim/bundle

<?php echo pathogen_get_target(TARGET_INSTALL); ?>: <?php echo pathogen_get_target(TARGET_CLEAN) . PHP_EOL; ?>
    hg clone <?php echo pathogen_get_repo($config); ?> <?php echo DIR_HOME; ?>/.vim
    ln -s <?php echo DIR_BUNDLE; ?> <?php echo DIR_HOME; ?>/.vim/bundle

<?php echo pathogen_get_target(TARGET_UPDATE); ?>:
    hg pull -u -R <?php echo DIR_HOME; ?>/.vim

<?php
        array_walk(
            bundle_list($config),
            function($bundle) use($config) { ?>
<?php echo bundle_get_target($bundle, TARGET_CLEAN); ?>:
    rm -rf <?php echo bundle_get_path(DIR_BUNDLE, $bundle) . PHP_EOL; ?>

<?php echo bundle_get_target($bundle, TARGET_INSTALL); ?>: <?php echo bundle_get_target($bundle, TARGET_CLEAN) . PHP_EOL; ?>
    hg clone <?php echo bundle_get_repo($config, $bundle) ?> <?php echo bundle_get_path(DIR_BUNDLE, $bundle) . PHP_EOL; ?>

<?php echo bundle_get_target($bundle, TARGET_UPDATE); ?>:
    hg pull -u -R <?php echo bundle_get_path(DIR_BUNDLE, $bundle) . PHP_EOL . PHP_EOL;
            }
        );

echo TARGET_CLEAN; ?>: <?php echo pathogen_get_target(TARGET_CLEAN); ?> <?php echo TARGET_CLEAN; ?>-vim <?php echo TARGET_CLEAN; ?>-vimrc

<?php echo TARGET_CLEAN; ?>-vim:
    rm -rf <?php echo DIR_HOME; ?>/.vim

<?php echo TARGET_CLEAN; ?>-vimrc:
    rm -rf <?php echo DIR_HOME; ?>/.vimrc

<?php echo TARGET_UPDATE; ?>: <?php echo pathogen_get_target(TARGET_UPDATE); ?> <?php
        echo bundle_list_target(bundle_list($config), TARGET_UPDATE) . PHP_EOL; ?>

.vim:
    mkdir <?php echo DIR_HOME; ?>/.vim

.vimrc:
    ln -s <?php echo DIR_ROOT; ?>/vim-config <?php echo DIR_HOME; ?>/.vimrc

<?php
    },
    config_init(realpath($_SERVER['argv'][1]))
);

function bundle_get_path($bundle_dir, $bundle_name) {
    return "{$bundle_dir}/{$bundle_name}";
}

function bundle_get_repo(Closure $config, $bundle) {
    return $config(KEY_BUNDLE, $bundle);
}

function bundle_get_target($bundle, $target) {
    return "{$bundle}-{$target}";
}

function bundle_list(Closure $config) {
    return array_keys($config(KEY_BUNDLE));
}

function bundle_list_target($bundle_list, $target) {
    return implode(' ', array_map(
            function($bundle) use($target) {
                return bundle_get_target($bundle, $target);
            },
            $bundle_list));
}

function config_init($config_path) {
    if(file_exists($config_path) === FALSE) {
        throw new Exception(sprintf('Config file %s is unavailable.', $config_path));
    }

    return call_user_func(
        function(Closure $array_read, Array $config) {
            return function() use($array_read, $config) {
                return call_user_func_array(
                    $array_read,
                    array_merge(
                        array($config),
                        func_get_args()));
            };
        },
        function($array) {
            return array_reduce(
                array_slice(func_get_args(), 1),
                function($result_current, $key_next) {
                    if(in_array($key_next, array_keys($result_current)) === FALSE) {
                        throw new Exception(sprintf('Array key %s not exist', $key_next));
                    }

                    return $result_current[$key_next];
                },
                $array);
        },
        json_decode(file_get_contents($config_path), TRUE)
    );
}

function pathogen_get_target($target) {
    return sprintf('%s-%s', KEY_PATHOGEN, $target);
}

function pathogen_get_repo($config) {
    return $config(KEY_PATHOGEN);
}
