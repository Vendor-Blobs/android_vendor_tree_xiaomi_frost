
/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 7);

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '286' AND NUMBER = '155';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('286','155','','');

COMMIT TRANSACTION;
