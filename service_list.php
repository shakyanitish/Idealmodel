<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);

define('SCHOOL_PAGE', 1);
define('JCMSTYPE', 0);

require_once("includes/initialize.php");

$currentTemplate = Config::getCurrentTemplate('template');
$jVars = array();

$slug = $_GET['slug'] ?? '';

switch ($slug) {
    case 'primary-level':
        $template = "template/{$currentTemplate}/primary.html";
        break;

    case 'lower-secondary-level':
         $template = "template/{$currentTemplate}/lower-secondary.html";
        break;

    case 'secondary-level':
        $template = "template/{$currentTemplate}/secondary.html";
        break;

    default:
        $template = "template/{$currentTemplate}/primary.html";
}

require_once('views/modules.php');

template($template, $jVars, $currentTemplate);
?>