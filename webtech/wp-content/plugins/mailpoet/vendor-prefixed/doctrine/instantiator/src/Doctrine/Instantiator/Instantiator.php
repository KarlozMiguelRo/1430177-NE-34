<?php
 namespace MailPoetVendor\Doctrine\Instantiator; if (!defined('ABSPATH')) exit; use Closure; use MailPoetVendor\Doctrine\Instantiator\Exception\InvalidArgumentException; use MailPoetVendor\Doctrine\Instantiator\Exception\UnexpectedValueException; use Exception; use ReflectionClass; final class Instantiator implements \MailPoetVendor\Doctrine\Instantiator\InstantiatorInterface { const SERIALIZATION_FORMAT_USE_UNSERIALIZER = 'C'; const SERIALIZATION_FORMAT_AVOID_UNSERIALIZER = 'O'; private static $cachedInstantiators = array(); private static $cachedCloneables = array(); public function instantiate($className) { if (isset(self::$cachedCloneables[$className])) { return clone self::$cachedCloneables[$className]; } if (isset(self::$cachedInstantiators[$className])) { $factory = self::$cachedInstantiators[$className]; return $factory(); } return $this->buildAndCacheFromFactory($className); } private function buildAndCacheFromFactory($className) { $factory = self::$cachedInstantiators[$className] = $this->buildFactory($className); $instance = $factory(); if ($this->isSafeToClone(new \ReflectionClass($instance))) { self::$cachedCloneables[$className] = clone $instance; } return $instance; } private function buildFactory($className) { $reflectionClass = $this->getReflectionClass($className); if ($this->isInstantiableViaReflection($reflectionClass)) { return function () use($reflectionClass) { return $reflectionClass->newInstanceWithoutConstructor(); }; } $serializedString = \sprintf('%s:%d:"%s":0:{}', $this->getSerializationFormat($reflectionClass), \strlen($className), $className); $this->checkIfUnSerializationIsSupported($reflectionClass, $serializedString); return function () use($serializedString) { return \unserialize($serializedString); }; } private function getReflectionClass($className) { if (!\class_exists($className)) { throw \MailPoetVendor\Doctrine\Instantiator\Exception\InvalidArgumentException::fromNonExistingClass($className); } $reflection = new \ReflectionClass($className); if ($reflection->isAbstract()) { throw \MailPoetVendor\Doctrine\Instantiator\Exception\InvalidArgumentException::fromAbstractClass($reflection); } return $reflection; } private function checkIfUnSerializationIsSupported(\ReflectionClass $reflectionClass, $serializedString) { \set_error_handler(function ($code, $message, $file, $line) use($reflectionClass, &$error) { $error = \MailPoetVendor\Doctrine\Instantiator\Exception\UnexpectedValueException::fromUncleanUnSerialization($reflectionClass, $message, $code, $file, $line); }); $this->attemptInstantiationViaUnSerialization($reflectionClass, $serializedString); \restore_error_handler(); if ($error) { throw $error; } } private function attemptInstantiationViaUnSerialization(\ReflectionClass $reflectionClass, $serializedString) { try { \unserialize($serializedString); } catch (\Exception $exception) { \restore_error_handler(); throw \MailPoetVendor\Doctrine\Instantiator\Exception\UnexpectedValueException::fromSerializationTriggeredException($reflectionClass, $exception); } } private function isInstantiableViaReflection(\ReflectionClass $reflectionClass) { if (\PHP_VERSION_ID >= 50600) { return !($this->hasInternalAncestors($reflectionClass) && $reflectionClass->isFinal()); } return \PHP_VERSION_ID >= 50400 && !$this->hasInternalAncestors($reflectionClass); } private function hasInternalAncestors(\ReflectionClass $reflectionClass) { do { if ($reflectionClass->isInternal()) { return \true; } } while ($reflectionClass = $reflectionClass->getParentClass()); return \false; } private function getSerializationFormat(\ReflectionClass $reflectionClass) { if ($this->isPhpVersionWithBrokenSerializationFormat() && $reflectionClass->implementsInterface('Serializable')) { return self::SERIALIZATION_FORMAT_USE_UNSERIALIZER; } return self::SERIALIZATION_FORMAT_AVOID_UNSERIALIZER; } private function isPhpVersionWithBrokenSerializationFormat() { return \PHP_VERSION_ID === 50429 || \PHP_VERSION_ID === 50513; } private function isSafeToClone(\ReflectionClass $reflection) { if (\method_exists($reflection, 'isCloneable') && !$reflection->isCloneable()) { return \false; } return !$reflection->hasMethod('__clone'); } } 