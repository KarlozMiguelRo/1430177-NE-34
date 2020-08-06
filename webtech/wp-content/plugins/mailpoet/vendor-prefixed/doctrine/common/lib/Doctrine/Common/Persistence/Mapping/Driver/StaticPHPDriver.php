<?php
 namespace MailPoetVendor\Doctrine\Common\Persistence\Mapping\Driver; if (!defined('ABSPATH')) exit; use MailPoetVendor\Doctrine\Common\Persistence\Mapping\ClassMetadata; use MailPoetVendor\Doctrine\Common\Persistence\Mapping\MappingException; class StaticPHPDriver implements \MailPoetVendor\Doctrine\Common\Persistence\Mapping\Driver\MappingDriver { private $paths = []; private $classNames; public function __construct($paths) { $this->addPaths((array) $paths); } public function addPaths(array $paths) { $this->paths = \array_unique(\array_merge($this->paths, $paths)); } public function loadMetadataForClass($className, \MailPoetVendor\Doctrine\Common\Persistence\Mapping\ClassMetadata $metadata) { $className::loadMetadata($metadata); } public function getAllClassNames() { if ($this->classNames !== null) { return $this->classNames; } if (!$this->paths) { throw \MailPoetVendor\Doctrine\Common\Persistence\Mapping\MappingException::pathRequired(); } $classes = []; $includedFiles = []; foreach ($this->paths as $path) { if (!\is_dir($path)) { throw \MailPoetVendor\Doctrine\Common\Persistence\Mapping\MappingException::fileMappingDriversRequireConfiguredDirectoryPath($path); } $iterator = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($path), \RecursiveIteratorIterator::LEAVES_ONLY); foreach ($iterator as $file) { if ($file->getBasename('.php') == $file->getBasename()) { continue; } $sourceFile = \realpath($file->getPathName()); require_once $sourceFile; $includedFiles[] = $sourceFile; } } $declared = \get_declared_classes(); foreach ($declared as $className) { $rc = new \ReflectionClass($className); $sourceFile = $rc->getFileName(); if (\in_array($sourceFile, $includedFiles) && !$this->isTransient($className)) { $classes[] = $className; } } $this->classNames = $classes; return $classes; } public function isTransient($className) { return !\method_exists($className, 'loadMetadata'); } } 