<?php
 namespace MailPoetVendor\Doctrine\DBAL\Id; if (!defined('ABSPATH')) exit; use MailPoetVendor\Doctrine\DBAL\DriverManager; use MailPoetVendor\Doctrine\DBAL\Connection; class TableGenerator { private $conn; private $generatorTableName; private $sequences = array(); public function __construct(\MailPoetVendor\Doctrine\DBAL\Connection $conn, $generatorTableName = 'sequences') { $params = $conn->getParams(); if ($params['driver'] == 'pdo_sqlite') { throw new \MailPoetVendor\Doctrine\DBAL\DBALException("Cannot use TableGenerator with SQLite."); } $this->conn = \MailPoetVendor\Doctrine\DBAL\DriverManager::getConnection($params, $conn->getConfiguration(), $conn->getEventManager()); $this->generatorTableName = $generatorTableName; } public function nextValue($sequenceName) { if (isset($this->sequences[$sequenceName])) { $value = $this->sequences[$sequenceName]['value']; $this->sequences[$sequenceName]['value']++; if ($this->sequences[$sequenceName]['value'] >= $this->sequences[$sequenceName]['max']) { unset($this->sequences[$sequenceName]); } return $value; } $this->conn->beginTransaction(); try { $platform = $this->conn->getDatabasePlatform(); $sql = "SELECT sequence_value, sequence_increment_by " . "FROM " . $platform->appendLockHint($this->generatorTableName, \MailPoetVendor\Doctrine\DBAL\LockMode::PESSIMISTIC_WRITE) . " " . "WHERE sequence_name = ? " . $platform->getWriteLockSQL(); $stmt = $this->conn->executeQuery($sql, array($sequenceName)); if ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) { $row = \array_change_key_case($row, \CASE_LOWER); $value = $row['sequence_value']; $value++; if ($row['sequence_increment_by'] > 1) { $this->sequences[$sequenceName] = array('value' => $value, 'max' => $row['sequence_value'] + $row['sequence_increment_by']); } $sql = "UPDATE " . $this->generatorTableName . " " . "SET sequence_value = sequence_value + sequence_increment_by " . "WHERE sequence_name = ? AND sequence_value = ?"; $rows = $this->conn->executeUpdate($sql, array($sequenceName, $row['sequence_value'])); if ($rows != 1) { throw new \MailPoetVendor\Doctrine\DBAL\DBALException("Race-condition detected while updating sequence. Aborting generation"); } } else { $this->conn->insert($this->generatorTableName, array('sequence_name' => $sequenceName, 'sequence_value' => 1, 'sequence_increment_by' => 1)); $value = 1; } $this->conn->commit(); } catch (\Exception $e) { $this->conn->rollback(); throw new \MailPoetVendor\Doctrine\DBAL\DBALException("Error occurred while generating ID with TableGenerator, aborted generation: " . $e->getMessage(), 0, $e); } return $value; } } 