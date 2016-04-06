Drop table if exists installRec;

-- installRec --
CREATE TABLE installRec (
  installID      char(3) not null,
  packageID     text,
  packageName	text,
  tagNumber     text,
  modelName	text,
  installDate   text,
  softwareCostUSD   decimal(10,2),
  
 primary key(installID)
);

--insert info into installRec table
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('001', 'AC01', 'ACCESS', '32808', 'IBM', '09-13-2005', 754.95);

INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('002', 'DB32', 'ZORK', '32808', 'IBM', '12-03-2005', 380.00);

INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('003', 'DB32', 'ZORK', '37691', 'APPLE', '06-15-2005', 380.00);

  
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('004', 'DB33', 'ORACLE', '57772', 'IBM', '05-27-2005', 412.77);

  
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('005', 'WP08', 'WORD PROCESSOR', '32808', 'APPLE', '01-12-2006', 185.00);

INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('006', 'WP08', 'WORD PROCESSOR', '37691', 'APPLE', '06-15-2005', 227.50);

  
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('007', 'WP08', 'WORD PROCESSOR', '57222', 'APPLE', '05-27-2005', 170.24);

 
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('008', 'WP09', 'MICROSOFT WORD', '59536', 'IBM', '10-30-2005', 35.00);

  
INSERT INTO installRec( installID, packageID, packageName, tagNumber, modelName, installDate, softwareCostUSD )
  VALUES('009', 'WP09', 'MICROSOFT WORD', '77740', 'IBM', '05-27-2005', 35.00);

SELECT installID,packageID,tagNumber,installDate,softwareCostUSD FROM installRec