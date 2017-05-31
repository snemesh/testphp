<?php

/**
 * Created by PhpStorm.
 * User: sergeynemesh
 * Date: 31.05.17
 * Time: 10:43
 */

function searchInArray($a, $b){

    foreach($a as $key=>$value) {
        if($value == $b) return true;
    };

}



