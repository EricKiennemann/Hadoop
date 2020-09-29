  select avg(B.averagerating) from imdb_title_basics A
	inner join imdb_title_ratings B on A.tconst = B.tconst 
  where array_contains(genres,'Comedy');
