<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Helpers
 *
 * @author ai
 */
namespace App\AECore\Helpers;
use App\AECore\Model\Module;

class Helpers {
    //put your code here
    public static function getModules () {
        $modules = Module::all();
        
        return $modules;
    }
}
