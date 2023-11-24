select genres, count (*) 
from movies_metadata 
group by genres;

select original_title , revenue  
from movies_metadata 
where revenue = (select max(revenue) from movies_metadata);

select count(*)  
from movies_metadata 
where adult = true;  

select avg(runtime)  
from movies_metadata;

select original_title, vote_average 
from  movies_metadata  
where  vote_average >= 7.5;

select original_language , count (*) 
from movies_metadata 
group by original_language;

select original_title 
from movies_metadata 
where release_date like '%2000%';

select original_title 
from  movies_metadata 
where not status = 'Released';

select original_title, belongs_to_collection 
from movies_metadata 
where belongs_to_collection not like '';

select original_title, sum(revenue - budget)
from movies_metadata 
where revenue > 0 and budget > 0
group by original_title ;