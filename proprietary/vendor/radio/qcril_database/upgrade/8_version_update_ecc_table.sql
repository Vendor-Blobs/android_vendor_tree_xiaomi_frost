
/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 8);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '452';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('452','112','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('452','113','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('452','114','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('452','115','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('452','911','','');
DELETE FROM qcril_emergency_source_voice_table where MCC = '452';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','113','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('452','114','','full');
COMMIT TRANSACTION;

