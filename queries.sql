select * from movies_metadata
select genres, count (genres) from movies_metadata group by genres
select title,revenue  from movies_metadata where revenue = (select MAX(revenue) from movies_metadata)
select avg (runtime) from movies_metadata mm 
select title, vote_average from movies_metadata  where vote_average > 7.5 order by vote_average desc
select original_language,count (original_language)  from movies_metadata group by original_language
select title, release_date from movies_metadata where release_date >= '2010-01-01' 
       and release_date < '2010-12-31'
