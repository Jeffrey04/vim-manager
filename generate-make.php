#!/usr/bin/env php
<?php

define('DIR_ROOT', getcwd());
define('DIR_BUNDLE', realpath('./default-bundles'));
define('DIR_HOME', realpath(getenv('HOME')));

define('KEY_BUNDLE', 'bundle');
define('KEY_PATHOGEN', 'pathogen');

define('TARGET_DEFAULT', 'all');
define('TARGET_BOOTSTRAP', 'bootstrap');
define('TARGET_INSTALL', 'install');
define('TARGET_UPDATE', 'update');
define('TARGET_CLEAN', 'clean');

call_user_func(
    function ($config) {
        echo target_construct(
            TARGET_DEFAULT,
            array_merge(
                [TARGET_BOOTSTRAP],
                bundle_list_target(bundle_list($config), TARGET_INSTALL)
            )
        )();

        echo target_construct(
            TARGET_BOOTSTRAP,
            array_merge(
                [pathogen_get_target(TARGET_INSTALL)],
                ['.vimrc']
            )
        )();

        echo target_construct(
            pathogen_get_target(TARGET_CLEAN),
            bundle_list_target(bundle_list($config), TARGET_CLEAN)
        )([['rm -rf %s/{*,.*}', vim_get_dir($config)]]);

        echo target_construct(
            pathogen_get_target(TARGET_INSTALL),
            [pathogen_get_target(TARGET_CLEAN), '.vim']
        )([
                [
                    'git clone --depth=1 %s %s',
                    pathogen_get_repo($config),
                    vim_get_dir($config)],
                [
                    'ln -s %s %s/bundle',
                    DIR_BUNDLE,
                    vim_get_dir($config)]]);

        echo target_construct(pathogen_get_target(TARGET_UPDATE))(
            [['git pull %s', vim_get_dir($config)]]
        );

        $_list = bundle_list($config);
        array_walk(
            $_list,
            function ($bundle) use ($config) {
                echo target_construct(bundle_get_target($bundle, TARGET_CLEAN))(
                    [['rm -rf %s', bundle_get_path(DIR_BUNDLE, $bundle)]]
                );

                echo target_construct(
                    bundle_get_target($bundle, TARGET_INSTALL),
                    [bundle_get_target($bundle, TARGET_CLEAN)]
                )([['git clone --depth=1 %s %s',
                    bundle_get_repo($config, $bundle),
                    bundle_get_path(DIR_BUNDLE, $bundle)]]);


                echo target_construct(bundle_get_target($bundle, TARGET_UPDATE))(
                    [['git pull %s', bundle_get_path(DIR_BUNDLE, $bundle)]]
                );
            }
        );

        echo target_construct(
            TARGET_CLEAN,
            [
                    pathogen_get_target(TARGET_CLEAN),
                    TARGET_CLEAN . '-vim',
                    TARGET_CLEAN . '-vimrc']
        )();

        echo target_construct(TARGET_CLEAN . '-vim')(
            [['rm -rf %s', vim_get_dir($config)]]
        );

        echo target_construct(TARGET_CLEAN . '-vimrc')(
            [['rm -rf %s', vim_get_rc($config)]]
        );


        echo target_construct(
            TARGET_UPDATE,
            array_merge(
                [pathogen_get_target(TARGET_UPDATE)],
                bundle_list_target(bundle_list($config), TARGET_UPDATE)
            )
        )();

        echo target_construct('.vim')(
            [['mkdir %s', vim_get_dir($config)]]
        );

        echo target_construct('.vimrc')(
            [['ln -s %s/vim-config %s', DIR_ROOT, vim_get_rc($config)]]
        );
    },
    config_init(realpath($_SERVER['argv'][1]))
);

function bundle_get_path($bundle_dir, $bundle_name)
{
    return "{$bundle_dir}/{$bundle_name}";
}

function bundle_get_repo(Closure $config, $bundle)
{
    return $config(KEY_BUNDLE, $bundle);
}

function bundle_get_target($bundle, $target)
{
    return "{$bundle}-{$target}";
}

function bundle_list(Closure $config)
{
    return array_keys($config(KEY_BUNDLE));
}

function bundle_list_target($bundle_list, $target)
{
    return array_map(
        function ($bundle) use ($target) {
            return bundle_get_target($bundle, $target);
        },
        $bundle_list
    );
}

function command_prepend_target($target)
{
    return sprintf(
        "\t@%s | sed 's/.*/%s: &/'%s",
        vsprintf(
            func_get_arg(1),
            array_slice(func_get_args(), 2)
        ),
        $target,
        PHP_EOL
    );
}

function config_init($config_path)
{
    if (file_exists($config_path) === false) {
        throw new Exception(sprintf('Config file %s is unavailable.', $config_path));
    }

    return call_user_func(
        function (Closure $array_read, array $config) {
            return function () use ($array_read, $config) {
                return call_user_func_array(
                    $array_read,
                    array_merge(
                        array($config),
                        func_get_args()
                    )
                );
            };
        },
        function ($array) {
            return array_reduce(
                array_slice(func_get_args(), 1),
                function ($result_current, $key_next) {
                    if (in_array($key_next, array_keys($result_current)) === false) {
                        throw new Exception(sprintf('Array key %s not exist', $key_next));
                    }

                    return $result_current[$key_next];
                },
                $array
            );
        },
        json_decode(file_get_contents($config_path), true)
    );
}

function pathogen_get_target($target)
{
    return sprintf('%s-%s', KEY_PATHOGEN, $target);
}

function pathogen_get_repo($config)
{
    return $config(KEY_PATHOGEN);
}

function target_construct($target_name, array $dependencies = array())
{
    return function (array $command_list = array()) use ($target_name, $dependencies) {
        return trim(sprintf(
            '%s: %s%s%s%s%s',
            $target_name,
            implode(' ', $dependencies),
            PHP_EOL,
            command_prepend_target($target_name, 'echo BEGIN'),
            implode(
                null,
                array_map(
                    function ($command) use ($target_name) {
                        return call_user_func_array(
                            'command_prepend_target',
                            array_merge(
                                array($target_name),
                                $command
                            )
                        );
                    },
                    $command_list
                )
            ),
            command_prepend_target($target_name, 'echo END')
        ))
        . PHP_EOL . PHP_EOL;
    };
}

function vim_get_dir(Closure $config)
{
    return sprintf(
        '%s/%s',
        DIR_HOME,
        $config('for') == 'vim' ? '.vim' : '.config/nvim'
    );
}

function vim_get_rc(Closure $config)
{
    return sprintf(
        '%s/%s',
        DIR_HOME,
        $config('for') == 'vim' ? '.vimrc' : '.config/nvim/init.vim'
    );
}
