select  basics.primarytitle,try.averagerating from
        ( select tconst,dir from imdb_title_crew LATERAL VIEW explode(director) crew AS dir ) as crew2
        inner join imdb_title_ratings as try on crew2.tconst = try.tconst
        inner join imdb_title_basics as basics on crew2.tconst = basics.tconst
        inner join imdb_name_basics as name on name.tconst = crew2.dir
        where name.primatyname = 'Quentin Tarantino' and basics.titletype = 'movie'
        order by try.averagerating desc limit 5;