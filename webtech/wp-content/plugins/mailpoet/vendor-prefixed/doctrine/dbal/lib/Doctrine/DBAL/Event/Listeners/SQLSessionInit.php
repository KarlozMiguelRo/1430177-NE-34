<?php
 namespace MailPoetVendor\Doctrine\DBAL\Event\Listeners; if (!defined('ABSPATH')) exit; use MailPoetVendor\Doctrine\DBAL\Event\ConnectionEventArgs; use MailPoetVendor\Doctrine\DBAL\Events; use MailPoetVendor\Doctrine\Common\EventSubscriber; class SQLSessionInit implements \MailPoetVendor\Doctrine\Common\EventSubscriber { protected $sql; public function __construct($sql) { $this->sql = $sql; } public function postConnect(\MailPoetVendor\Doctrine\DBAL\Event\ConnectionEventArgs $args) { $conn = $args->getConnection(); $conn->exec($this->sql); } public function getSubscribedEvents() { return array(\MailPoetVendor\Doctrine\DBAL\Events::postConnect); } } 