SELECT
	sr.id AS synth_id,
	
	sr.result AS NQ_id,
	i0.name AS NQ_name,
	CONCAT ('x', sr.resultqty) AS NQ_qty,
	
	sr.resulthq1 AS HQ1_id,
	i1.name AS HQ1_name,
	CONCAT ('x', sr.resulthq1qty) AS HQ1_qty,
	
	sr.resulthq2 AS HQ2_id,
	i2.name AS HQ2_name,
	CONCAT ('x', sr.resulthq2qty) AS HQ2_qty,
	
	sr.resulthq3 AS HQ3_id,
	i3.name AS HQ3_name,
	CONCAT ('x', sr.resulthq3qty) AS HQ3_qty
	
FROM synth_recipes sr
JOIN item_basic AS i0 ON sr.result = i0.itemid
JOIN item_basic AS i1 ON sr.resulthq1 = i1.itemid
JOIN item_basic AS i2 ON sr.resulthq2 = i2.itemid
JOIN item_basic AS i3 ON sr.resulthq3 = i3.itemid;