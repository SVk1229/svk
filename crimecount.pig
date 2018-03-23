crime = LOAD '/user/cloudera/pig' USING PigStorage(',') AS (crimeid:chararray,month:chararray, repby:chararray, fals:chararray,longi:chararray, lati:double,loc:chararray,lsoa:chararray,lsoac:chararray, crimetyp:chararray,outc:chararray,context:chararray);
crimelocgrp = GROUP crime BY (crimetyp);
crimeloc1 = FOREACH crimelocgrp GENERATE group, COUNT(crime.crimetyp) as cnt;
crimecount = ORDER crimeloc1 BY cnt;
crime1 = STORE crimecount INTO '/user/cloudera/pig/crimecount2' USING PigStorage(',');
