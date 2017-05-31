<?php

/**
 * Created by PhpStorm.
 * User: sergeynemesh
 * Date: 31.05.17
 * Time: 12:28
 */

function arrayReverseKeys($a) {

    $reversedKeys = array_reverse($a);
    $keys = array_keys($reversedKeys);
    return array_combine($keys,$a);

}

