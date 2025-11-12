
select [Year], count(*) from Tournament
where [Round] = '16'
group by [Year]
order by [Year]



select * from Tournament where [Year] = '1988-89' order by [Round]

insert into Tournament values ('1988-89', 'UNC', 'Dean Smith', '16')


select * from Tournament where Coach like '%Knight%'

select * from CollegePlayers where [Year] = '1994-95' order by Team, PTS desc, REB desc

select * from DraftDone