--Counting Companies by Batch

SELECT yc_batch, count(*) as count
FROM [YCombinator.db]
GROUP BY yc_batch
ORDER BY yc_batch;

--Counting Companies by Type
SELECT filter_tags, count(*) as count
FROM [YCombinator.db]
GROUP BY filter_tags
ORDER BY count DESC;

--Counting Companies by Location
SELECT location, count(*) as count
FROM [YCombinator.db]
GROUP BY location
ORDER BY count DESC;

--Query To Create a Word Cloud of Company Descriptions in Tableau
SELECT description
FROM [YCombinator.db];

--Companies by Batch and Type

SELECT yc_batch, filter_tags, count(*) as count
FROM [YCombinator.db]
GROUP BY yc_batch, filter_tags
ORDER BY yc_batch, count DESC;