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

    echo call_user_func(call_user_func(
        target_construct(
            TARGET_DEFAULT,
            array_merge(
                array(pathogen_get_target(TARGET_INSTALL)),
                bundle_list_target(bundle_list($config), TARGET_INSTALL)))));

    echo call_user_func(call_user_func(
        target_construct(
            pathogen_get_target(TARGET_CLEAN),
            bundle_list_target(bundle_list($config), TARGET_CLEAN)),
        array(
            array(
                'if [ -d %s/.vim/.hg ]; then hg update null -R %s/.vim && rm -rf %s/.vim/.hg; fi',
                DIR_HOME,
                DIR_HOME,
                DIR_HOME),
            array(
                'rm -rf %s/.vim/bundle',
                DIR_HOME))));

    echo call_user_func(call_user_func(
        target_construct(
            pathogen_get_target(TARGET_INSTALL),
            array(pathogen_get_target(TARGET_CLEAN), '.vim', '.vimrc')),
        array(
            array(
                'hg clone %s %s/.vim',
                pathogen_get_repo($config),
                DIR_HOME),
            array(
                'ln -s %s %s/.vim/bundle',
                DIR_BUNDLE,
                DIR_HOME))));
    echo call_user_func(call_user_func(
        target_construct(pathogen_get_target(TARGET_UPDATE)),
        array(
            array('hg pull -u -R %s/.vim', DIR_HOME)
        )));

        array_walk(
            bundle_list($config),
            function($bundle) use($config) {

    echo call_user_func(call_user_func(
        target_construct(bundle_get_target($bundle, TARGET_CLEAN)),
        array(array('rm -rf %s', bundle_get_path(DIR_BUNDLE, $bundle)))));

    echo call_user_func(call_user_func(
        target_construct(
            bundle_get_target($bundle, TARGET_INSTALL),
            array(bundle_get_target($bundle, TARGET_CLEAN))),
        array(array('hg clone %s %s',
            bundle_get_repo($config, $bundle),
            bundle_get_path(DIR_BUNDLE, $bundle)))));

    echo call_user_func(call_user_func(
        target_construct(bundle_get_target($bundle, TARGET_UPDATE)),
        array(array('hg pull -u -R %s', bundle_get_path(DIR_BUNDLE, $bundle)))));

            }
        );

    echo call_user_func(call_user_func(
        target_construct(
            TARGET_CLEAN,
            array(
                pathogen_get_target(TARGET_CLEAN),
                TARGET_CLEAN . '-vim',
                TARGET_CLEAN . '-vimrc'))));

    echo call_user_func(call_user_func(
        target_construct(TARGET_CLEAN . '-vim'),
        array(array('rm -rf %s/.vim', DIR_HOME))));

    echo call_user_func(call_user_func(
        target_construct(TARGET_CLEAN . '-vimrc'),
        array(array('rm -rf %s/.vimrc', DIR_HOME))));

    echo call_user_func(call_user_func(
        target_construct(
            TARGET_UPDATE,
            array_merge(
                array(pathogen_get_target(TARGET_UPDATE)),
                bundle_list_target(bundle_list($config), TARGET_UPDATE)))));

    echo call_user_func(call_user_func(
        target_construct('.vim'),
        array(array('mkdir %s/.vim', DIR_HOME))));

    echo call_user_func(call_user_func(
        target_construct('.vimrc'),
        array(array('ln -s %s/vim-config %s/.vimrc', DIR_ROOT, DIR_HOME))));

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
    return array_map(
        function($bundle) use($target) {
            return bundle_get_target($bundle, $target);
        },
        $bundle_list);
}

function command_prepend_target($target) {
    return sprintf(
        "\t%s | sed 's/.*/\[%s\] &/'%s",
        vsprintf(
            func_get_arg(1),
            array_slice(func_get_args(), 2)),
        $target,
        PHP_EOL);
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

function target_construct($target_name, Array $dependencies = array()) {
    return function(Array $command_list = array()) use($target_name, $dependencies) {
        return function() use($command_list, $target_name, $dependencies) {
            return trim(sprintf(
                '%s: %s%s%s',
                $target_name,
                implode(' ', $dependencies),
                PHP_EOL,
                implode(
                    NULL,
                    array_map(
                        function($command) use($target_name) {
                            return call_user_func_array(
                                'command_prepend_target',
                                array_merge(
                                    array($target_name),
                                    $command
                                ));
                        },
                        $command_list)))) . PHP_EOL . PHP_EOL;
        };
    };
}
