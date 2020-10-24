<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitbb40b70ec59d30eb94d54a0a18c4b1bd
{
    public static $prefixLengthsPsr4 = array (
        'K' => 
        array (
            'Klein\\' => 6,
        ),
        'C' => 
        array (
            'ControlHorasExtras\\PHP_MVC\\' => 27,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Klein\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/Libs/klein/src/Klein',
        ),
        'ControlHorasExtras\\PHP_MVC\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitbb40b70ec59d30eb94d54a0a18c4b1bd::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitbb40b70ec59d30eb94d54a0a18c4b1bd::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
