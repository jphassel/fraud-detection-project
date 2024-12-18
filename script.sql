CREATE TABLE `transactions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `step` int,
  `type` varchar(255),
  `amount` decimal(15,2),
  `nameOrig` varchar(255),
  `oldbalanceOrg` decimal(15,2),
  `newbalanceOrig` decimal(15,2),
  `nameDest` varchar(255),
  `oldbalanceDest` decimal(15,2),
  `newbalanceDest` decimal(15,2),
  `isFraud` boolean,
  `isFlaggedFraud` boolean,
  `city` varchar(255)
);
