<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Default Autoload action
    |--------------------------------------------------------------------------
    |
    | Define whether or not running composer autoload after generating CRUD
     */
    'autoload' => true,
    // Nuxt directory.
    'nuxt_base_directory' => env('NUXT_BASE_DIRECTORY', 'nuxt'),
    // Generate repository or not.
    'repository_generate' => true,
];
