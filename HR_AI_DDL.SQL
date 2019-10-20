CREATE DATABASE IF NOT EXISTS hr_ai;
use hr_ai;
show tables;
CREATE TABLE `hr_ai`.`location` (
  `location_id` INT NOT NULL AUTO_INCREMENT,
  `location_code` VARCHAR(45) NULL,
  `Line1` VARCHAR(45) NULL,
  `Line2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`location_id`));
  
  CREATE TABLE `hr_ai`.`department` (
  `department_id` INT NOT NULL AUTO_INCREMENT,
  `department_name` VARCHAR(45) NULL,
  PRIMARY KEY (`department_id`));

CREATE TABLE `hr_ai`.`contact_info` (
  `Id` INT NOT NULL,
  `email_id` VARCHAR(100) NULL,
  `mobile` VARCHAR(20) NULL,
  PRIMARY KEY (`Id`));

CREATE TABLE `hr_ai`.`skill` (
  `skill_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `catagory` VARCHAR(45) NULL,
  PRIMARY KEY (`skill_id`));
CREATE TABLE `hr_ai`.`employee` (
  `employee-id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  `gender` VARCHAR(10) NULL,
  `Previous_exp` FLOAT NULL,
  `dateofjoin` DATE NULL,
  `grade` VARCHAR(25) NULL,
  `destination` VARCHAR(45) NULL,
  `employment_status` VARCHAR(45) NULL,
  `last_date` DATE NULL,
  `employment_type` VARCHAR(45) NULL,
  `current_city` VARCHAR(45) NULL,
  `permanent_city` VARCHAR(45) NULL,
  `Manager_id` INT NULL,
  `contact_info_id` INT NULL,
  `Location_id` INT NULL,
  `Department_Id` INT NULL,
  `skill_map_id` INT NULL,
  PRIMARY KEY (`employee-id`),
  INDEX `Location_id_idx` (`Location_id` ASC),
  INDEX `id_idx` (`contact_info_id` ASC),
  INDEX `department_id_idx` (`Department_Id` ASC),
  CONSTRAINT `Location_id`     FOREIGN KEY (`Location_id`)     REFERENCES `hr_ai`.`location` (`location_id`)     ON DELETE NO ACTION   ON UPDATE NO ACTION,
  CONSTRAINT `id`   FOREIGN KEY (`contact_info_id`)   REFERENCES `hr_ai`.`contact_info` (`Id`)     ON DELETE NO ACTION     ON UPDATE NO ACTION,
  CONSTRAINT `department_id`   FOREIGN KEY (`Department_Id`)   REFERENCES `hr_ai`.`department` (`department_id`)  ON DELETE NO ACTION     ON UPDATE NO ACTION);

