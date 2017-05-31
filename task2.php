<?php

/**
 * Created by PhpStorm.
 * User: sergeynemesh
 * Date: 31.05.17
 * Time: 10:51
 */


function checkBrackets($s) {
    $myArray = array();
    $brackets = array('('=>')', '['=>']');
    $len = strlen($s);
    for($i=0; $i<$len; $i++) {
        $currentChar = $s[$i];
        if($currentChar == '(' or $currentChar == '[') {
            array_push($myArray, $currentChar);
        } elseif ($currentChar == ')' or $currentChar == ']') {

            $open = array_pop($myArray);
            if($brackets[$open] != $currentChar) {
                return false;
            }
        }
    }
    return empty($myArray);
}
