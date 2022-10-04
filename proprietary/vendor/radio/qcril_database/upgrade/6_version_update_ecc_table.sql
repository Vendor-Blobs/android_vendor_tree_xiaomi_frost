
/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '401';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','112','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','102','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','101','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','103','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','118','','');
DELETE FROM qcril_emergency_source_voice_table where MCC = '401';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('401','102','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('401','101','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('401','103','','full');

COMMIT TRANSACTION;
