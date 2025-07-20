<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace App\Services;

/**
 * SnsService class
 *
 * @category Core
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */

interface SnsServiceInterface
{
    /**
     * Search KOL in Hypeauditor API
     * Note: Free user search with sandbox env
     *    vancityreynolds
     *    kevinhart4real
     *    kobebryant
     *    supersaf
     *    taylorswift
     *    selenagomez
     *    pepamack
     *    kendalljenner
     *    fcbarcelona
     *    theshilpashetty
     *    tarynwilliams
     *    nathanwpyle
     *
     * @param array $data Conditions filter.
     *
     * @return array Result from Hypeauditor API
     */
    public function search(array $data);

    /**
     * Report KOL in Hypeauditor API
     * Note: Free user report with sandbox env
     *    vancityreynolds
     *    kevinhart4real
     *    kobebryant
     *    supersaf
     *    taylorswift
     *    selenagomez
     *    pepamack
     *    kendalljenner
     *    fcbarcelona
     *    theshilpashetty
     *    tarynwilliams
     *    nathanwpyle
     *
     * @param array $data Conditions filter.
     *
     * @return array Result from Hypeauditor API
     */
    public function report(array $data);
}
