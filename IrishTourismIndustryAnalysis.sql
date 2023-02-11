SELECT AddressRegion, COUNT(Name) AS NumberOfAttractions
FROM attractions
GROUP BY AddressRegion

SELECT AddressRegion, COUNT(Name) AS NumberOfActivities
FROM activities
GROUP BY AddressRegion

SELECT AddressRegion, COUNT(Name) AS NumberOfAccommodations
FROM accommodations
GROUP BY AddressRegion

SELECT Tags, COUNT(Name) AS NumberOfAttractions
FROM attractions
GROUP BY Tags

SELECT Tags, COUNT(Name) AS NumberOfAccommodations
FROM accommodations
GROUP BY Tags

SELECT Tags, COUNT(Name) AS NumberOfActivites
FROM activities
GROUP BY Tags

SELECT Tags, COUNT(Name) AS NumberOfActivites
FROM activities
GROUP BY Tags

SELECT attractions.attractions.AddressRegion, COUNT( DISTINCT attractions.attractions.Name) AS NumberOfAttractions, COUNT( DISTINCT activities.activities.Name) AS NumberOfActivities
FROM attractions.attractions
OUTER JOIN activities.activities
ON attractions.attractions.AddressRegion = activities.activities.AddressRegion
GROUP BY attractions.attractions.AddressRegion