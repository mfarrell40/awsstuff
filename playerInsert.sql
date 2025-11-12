
select * from CollegePlayers where Team = 'Purdue' and [Year] = '2002-03' order by PTS desc

select * from CollegePlayers where [Name] like '%Clarke%' and Team = 'Arkansas'

select * from CollegePlayers where Team like '%Bowling%' order by Team


insert into CollegePlayers values ('David Vanterpool', 'St. Bonaventure', '1991-92', 27, 8.9, 4.9, 3.6, 2.0, 0.4, .420, .719, .225)
insert into CollegePlayers values ('David Vanterpool', 'St. Bonaventure', '1992-93', 27, 13.3, 5.9, 4.3, 2.4, 0.1, .439, .737, .350)
insert into CollegePlayers values ('David Vanterpool', 'St. Bonaventure', '1993-94', 27, 12.4, 6.3, 3.5, 2.0, 0.3, .399, .701, .319)
insert into CollegePlayers values ('David Vanterpool', 'St. Bonaventure', '1994-95', 31, 17.5, 5.5, 3.0, 2.4, 0.2, .444, .753, .344)



/* get highest scorer for the team for each year */
select [Name], [Year], PTS
from (select *, ROW_NUMBER() over (partition by [Year], Team order by PTS desc) as rn
from CollegePlayers) as cp
where Team = 'Xavier' and rn = 1
order by [Year]



select [Year], count(*)
from CollegePlayers
group by [Year]
order by [Year] asc