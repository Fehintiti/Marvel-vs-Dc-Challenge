select sum(USA_Gross) from Onyx..Comics

select *from Onyx..comics


---distinct Marvel Movies
select distinct (Movie) from Onyx..Comics
where category = 'Marvel'

--distinct DC Movies
select distinct (Movie) from Onyx..Comics
where category = 'DC'

--Total Marvel Movies--
select count(Movie) from Onyx..Comics
where category = 'Marvel'

---Total DC Movies
select count (movie) from Onyx..Comics
where category ='DC'

---DC Movies by Rating
Select count(Movie) as DCmovies ,Rating from Onyx..Comics
where category = 'DC' and Rating is not null 
group BY Rating

---Marvel Movies by Rating
select count(Movie) as MarvelMovies, Rating from Onyx..Comics
where Category = 'Marvel' and Rating is not null
group by Rating

---Marvel Movies by Genre
select distinct(Genre),count(Genre) as MarvelGenre from Onyx..Comics
where category = 'Marvel' and Genre is not null
group by Genre
order by MarvelGenre DESC

---DC Movies by DC
select distinct(Genre),count(Genre) as MarvelGenre from Onyx..Comics
where category = 'DC' and Genre is not null
group by Genre
order by MarvelGenre DESC

----DC Movies by USA_Gross
select (USA_Gross),Movie as TopMovieGross from Onyx..Comics
where category ='DC' and USA_Gross is not null
group by USA_Gross,Movie
order by USA_Gross desc

--Marvel Movies by USA_Gross
select (USA_Gross),Movie as TopMovieGross from Onyx..Comics
where category ='Marvel' and USA_Gross is not null
group by USA_Gross,Movie
order by USA_Gross desc


---Average IMDB Score for Marvel
select avg(IMDB_Score) as AverageIMDBSCORE from Onyx..Comics
WHERE category = 'Marvel'

---Average IMDB Score for DC
select avg(IMDB_Score) as AverageIMDBSCORE from Onyx..Comics
WHERE category = 'DC'

--Total Votes for Marvel
select sum(Votes) as TotalMarvelVotes from Onyx..Comics
where category = 'Marvel'

--Total Votes for DC
select sum(Votes) as TotalMarvelVotes from Onyx..Comics
where category = 'DC' 

--Total Metascore for Dc
select sum(Metascore) as TotalMarvelVotes from Onyx..Comics
where category = 'DC' 

--Total Metascore for Marvel
select sum(Metascore) as TotalMarvelVotes from Onyx..Comics
where category = 'Marvel' 

--Avergae MetaScore for Marvel
select avg(MetaScore) as AverageMetaScoreMarvel from Onyx..Comics
where category ='Marvel'


--Average Metascore for DC
select avg(MetaScore) as AverageMetaScoreMarvel from Onyx..Comics
where category ='DC'

--- Mrvel Movie by Runtime
Select distinct (Movie), Runtime from Onyx..Comics
where category = 'Marvel' and Runtime is not null
order by Runtime desc

--DC Movie by Runtime
Select distinct (Movie), Runtime from Onyx..Comics
where category = 'DC' and Runtime is not null
order by Runtime desc