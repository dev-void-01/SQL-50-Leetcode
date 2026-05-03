SELECT today.id
FROM  Weather as today
WHERE EXISTS (      
   SELECT 1
    FROM Weather as yesterday
    WHERE yesterday.temperature < today.temperature
    AND DATEDIFF (today.recordDate,yesterday.recordDate) = 1 
 );
