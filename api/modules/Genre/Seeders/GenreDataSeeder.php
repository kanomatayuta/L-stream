<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace Modules\Genre\Seeders;

use Illuminate\Database\Seeder;
use Modules\Genre\Models\Genre;

/**
 * GenreDataSeeder class
 *
 * @category Genre
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class GenreDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Genre::updateOrCreate(['name' => 'ファッション'], ['name' => 'ファッション']);
        Genre::updateOrCreate(['name' => 'ビューティー'], ['name' => 'ビューティー']);
        Genre::updateOrCreate(['name' => 'グルメ'], ['name' => 'グルメ']);
        Genre::updateOrCreate(['name' => 'インテリア'], ['name' => 'インテリア']);
        Genre::updateOrCreate(['name' => '電化製品'], ['name' => '電化製品']);
        Genre::updateOrCreate(['name' => '不動産'], ['name' => '不動産']);
        Genre::updateOrCreate(['name' => '動物'], ['name' => '動物']);
        Genre::updateOrCreate(['name' => '旅行'], ['name' => '旅行']);
        Genre::updateOrCreate(['name' => '日用品'], ['name' => '日用品']);
        Genre::updateOrCreate(['name' => 'エンタメ'], ['name' => 'エンタメ']);
        Genre::updateOrCreate(['name' => '旅行・ホテル'], ['name' => '旅行・ホテル']);
        Genre::updateOrCreate(['name' => 'ゲーム'], ['name' => 'ゲーム']);
        Genre::updateOrCreate(['name' => 'キッズ'], ['name' => 'キッズ']);
        Genre::updateOrCreate(['name' => '乗り物'], ['name' => '乗り物']);
        Genre::updateOrCreate(['name' => 'アート(音楽・映画)'], ['name' => 'アート(音楽・映画)']);
        Genre::updateOrCreate(['name' => 'ビジネス'], ['name' => 'ビジネス']);
        Genre::updateOrCreate(['name' => 'スポーツ・アクティブ'], ['name' => 'スポーツ・アクティブ']);
        Genre::updateOrCreate(['name' => 'その他'], ['name' => 'その他']);
    }
}
