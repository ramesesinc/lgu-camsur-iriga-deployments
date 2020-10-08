[insertAdjustmentTypeClassification]
INSERT INTO landadjustmenttype_classification 
	(landadjustmenttypeid, classification_objid, landrysettingid)
VALUES	
	($P{landadjustmenttypeid}, $P{classification_objid}, $P{landrysettingid})


[deleteAdjustmentTypeClassifications]
DELETE FROM landadjustmenttype_classification WHERE landadjustmenttypeid = $P{adjustmenttypeid}

[deleteAllAdjustmentTypeClassifications]
DELETE FROM landadjustmenttype_classification WHERE landrysettingid = $P{landrysettingid}

[getAdjustmentTypeClassifications]
SELECT lc.*, pc.code AS classification_code, pc.name AS classification_name
FROM landadjustmenttype_classification lc
	INNER JOIN propertyclassification pc ON lc.classification_objid = pc.objid 
WHERE lc.landadjustmenttypeid = $P{adjustmenttypeid}