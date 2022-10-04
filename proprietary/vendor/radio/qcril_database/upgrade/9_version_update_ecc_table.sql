
/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 9);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '272';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('272','112','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('272','999','','');

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '272';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('272','999','','');

COMMIT TRANSACTION;

