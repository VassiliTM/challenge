CREATE TABLE `Contract` (
  `contrat_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `salary` int NOT NULL,
  `signature_date` datetime NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  `contract_duration` int NOT NULL,
  PRIMARY KEY (`contrat_id`, `employee_id`)
);

CREATE TABLE `Employee` (
  `employee_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` datetime NOT NULL
);

CREATE TABLE `Employee_Service` (
  `employee_id` int NOT NULL,
  `service_id` int NOT NULL,
  `manager` boolean NOT NULL,
  PRIMARY KEY (`employee_id`, `service_id`)
);

CREATE TABLE `Familly` (
  `familly_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` datetime NOT NULL,
  PRIMARY KEY (`familly_id`, `employee_id`)
);

CREATE TABLE `Service` (
  `service_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `service_name` varchar(50) NOT NULL,
  `other_service_id` int NOT NULL
);

ALTER TABLE `Contract` ADD FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`);
ALTER TABLE `Familly` ADD FOREIGN KEY (`familly_id`) REFERENCES `Employee` (`employee_id`);
ALTER TABLE `Employee_Service` ADD FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`);
ALTER TABLE `Employee_Service` ADD FOREIGN KEY (`service_id`) REFERENCES `Service` (`service_id`);
ALTER TABLE `Service` ADD FOREIGN KEY (`other_service_id`) REFERENCES `Service` (`service_id`);
