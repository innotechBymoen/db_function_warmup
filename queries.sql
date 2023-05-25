insert into team(name, city) values('Team One','City One'),('Team Two','City Two'),('Team Three','City Three');
insert into player(team_id, name, points, `number`) values(1, 'Player One', 10, 99), (2, 'Player Two', 20, 98),(3, 'Player Three', 25, 97),(1, 'Player Four', 15, 96),(2, 'Player Five', 17, 95),(3, 'Player Six', 26, 94),(1, 'Player Seven', 8, 93),(2, 'Player Eight', 6, 92),(3, 'Player Nine', 30, 91);

select p.name, p.`number`, t.name, p.points
from team t inner join player p on t.id = p.team_id
order by p.points desc;

select t.name, SUM(p.points)
from team t inner join player p on t.id = p.team_id
group by t.id;

select p.team_id, SUM(p.points)
from player p
group by p.team_id;