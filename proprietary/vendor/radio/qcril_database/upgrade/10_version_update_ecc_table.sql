
/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 10);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '410';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','114','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','115','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','117','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','15','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','16','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','130','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','1122','','');

DELETE FROM qcril_emergency_source_mcc_table where MCC = '401';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','112','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('401','118','','');

DELETE FROM qcril_emergency_source_voice_table where MCC = '401';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('401','112','','full');

COMMIT TRANSACTION;

