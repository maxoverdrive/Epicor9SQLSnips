--Active Parts with Inactive Materials
SELECT PartMtl.PartNum, t1.InActive, PartMtl.MtlPartNum, t2.InActive FROM PartMtl JOIN PartRev t1 ON t1.Company = PartMtl.Company AND t1.PartNum = PartMtl.PartNum JOIN Part t2 ON t2.Company = PartMtl.Company AND t2.PartNum = PartMtl.MtlPartNum WHERE t1.InActive = 0 AND t2.InActive = 1
