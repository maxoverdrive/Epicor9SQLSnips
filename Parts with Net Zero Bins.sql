--Parts with Net Zero Bins
SELECT a.Company, a.PartNum, a.WarehouseCode, a.BinNum, a.OnHandQty FROM PartBin a
JOIN
(SELECT PartBin.Company, PartBin.PartNum FROM PartBin
GROUP BY PartBin.Company, PartBin.PartNum Having SUM(PartBin.OnHandQty)=0) b
ON a.Company=b.Company AND a.PartNum = b.PartNum 
