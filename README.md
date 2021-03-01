# EDI-DB
![EDI Shack Logo](https://edishack.com/templates/ja_portfolio/themes/orange-color/images/logo.png) [EDI Shack](https://edishack.com) makes EDI easy


EDI Shack's EDI-DB repository contains the MySQL database tables for an EDI project. Every EDI project consists of 2 essential services, tracking files and creating/reading EDI files. The EDI Shack philosophy is to give small and medium size companies the common EDI tools everyone can use.   

All of EDI Shack's EDI frameworks use this EDI Schema, and it has been time-tested and proven. The licence is MIT, so feel free to download it and use it however you want.  

 
## The included EDI database tables

### edi\_file\_details
 edi\_file\_details is used to keep track of the items in an EDI file. 


    CREATE TABLE `edi_file_details` (
      `id` int(10) NOT NULL AUTO_INCREMENT,
      `efd_edf_id` int(10) NOT NULL COMMENT 'The edi_files record this entry is associated with',
      `efd_record_id` int(10) NOT NULL COMMENT 'The edf_records_tablename record for this entry',
      `efd_edi_transaction_control_number` int(10) NOT NULL,
      `efd_espState` tinyint(4) NOT NULL DEFAULT '0',
      `efd_acknowledgment_code` varchar(2) DEFAULT NULL,
      `efd_accepted_datetime` datetime DEFAULT NULL,
      `efd_unique_control_number` bigint(20) DEFAULT NULL,
      `efd_cancelled` int(10) NOT NULL DEFAULT '0' COMMENT 'if this entry is cancelled, either the record was not on the file, or it was rejected by the receiver',
      `efd_cancelled_by_staff_id` int(10) DEFAULT NULL,
      `efd_cancelled_datetime` datetime DEFAULT NULL,
      `efd_total` decimal(13,4) DEFAULT NULL COMMENT 'If used, this is helpful for building reports',
      `created_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='This table is used to record the details of what''s in the edi_files table';




### edi\_files

edi\_files is used to keep track of all outgoing files

    CREATE TABLE `edi_files` (
      `id` int(10) NOT NULL AUTO_INCREMENT,
      `edf_edt_id` int(10) NOT NULL,
      `edf_payment_agency` int(10) DEFAULT NULL,
      `edf_transaction_control_number` int(10) DEFAULT NULL,
      `edf_records_tablename` varchar(255) DEFAULT NULL,
      `edf_filename` varchar(255) DEFAULT NULL,
      `edf_client_filename` varchar(255) DEFAULT NULL,
      `edf_sender_id` int(10) DEFAULT NULL,
      `edf_receiver_id` int(10) DEFAULT NULL,
      `edf_state` int(10) NOT NULL,
      `edf_filedate` datetime DEFAULT NULL,
      `edf_transmission_date` datetime DEFAULT NULL,
      `edf_cancelled` int(10) NOT NULL DEFAULT '0',
      `edf_acknowledged` tinyint(4) DEFAULT NULL,
      `edf_records_parsed` int(10) unsigned DEFAULT NULL,
      `edf_records_transmitted` int(10) DEFAULT NULL,
      `edf_test_file` tinyint(4) DEFAULT '0',
      `edf_cst_id` int(10) unsigned DEFAULT NULL,
      `edf_stf_id` int(10) unsigned DEFAULT NULL,
      `created_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Managed by Laravel',
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COMMENT='Every EDI file should have a record in this table';





