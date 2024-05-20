--this dataset represents each unique game at the 15th minute mark, indicating many statistics such as total wards placed, total gold gained, total kills per blue and red side and much more

select * from league

--totalling blue side wins and red side wins

select sum(case when blue_win = 1 then 1 else 0 end) as blue_win_total,
sum(case when blue_win = 0 then 1 else 0 end) as red_win_total
from league

--totaling all wards placed per blue/red side

select match_id, sum(blue_yellow_wards + blue_sight_wards + blue_blue_wards + blue_control_wards) as blue_total_wards_placed,
sum(red_yellow_wards + red_sight_wards + red_blue_wards + red_control_wards) as red_total_wards_placed
from league
group by match_id
order by 1 

--averaging all wards placed per side

select sum(blue_yellow_wards + blue_sight_wards + blue_blue_wards + blue_control_wards) / count(*) as blue_avg_wards_placed,
sum(red_yellow_wards + red_Sight_Wards + red_blue_wards + red_control_wards) / count(*) as red_avg_wards_placed
from league

--cross joining both tables to see sum and avg wards per side

with cte as (
select match_id, sum(blue_yellow_wards + blue_sight_wards + blue_blue_wards + blue_control_wards) as blue_total_wards_placed,
sum(red_yellow_wards + red_sight_wards + red_blue_wards + red_control_wards) as red_total_wards_placed
from league 
group by match_id
)
select * from cte
cross join (select round(sum(blue_yellow_wards + blue_sight_wards + blue_blue_wards + blue_control_wards) / count(*) , 2) as blue_avg_wards_placed,
round(sum(red_yellow_wards + red_Sight_Wards + red_blue_wards + red_control_wards) / count(*), 2) as red_avg_wards_placed
from league) b

--totalling blue kills/red kills, average blue/red kills

select sum(blue_kills) as blue_total_kills, sum(red_kills) as red_total_kills, round(avg(blue_kills), 2) as avg_blue_kills, round(avg(red_kills), 2) as avg_red_kills
from league

--totalling blue assists/red assists, average blue/red assists

select sum(blue_assists) as blue_total_assists, sum(red_assists) as red_total_assists, round(avg(blue_assists), 2) as avg_blue_assists, round(avg(red_assists), 2) as avg_red_assists
from league

--totalling blue/red voidgrubs, dragons, heralds, avg blue/red voidgrubs, dragons, heralds

select sum(blue_void_grubs) as blue_total_voidgrubs, sum(red_void_grubs) as red_total_voidgrubs,
sum(blue_dragons) as blue_total_dragons, sum(red_dragons) as red_total_dragons,
sum(blue_heralds) as blue_total_heralds, sum(red_heralds) as red_total_heralds,
avg(blue_void_grubs) as blue_avg_voidgrubs, avg(red_void_grubs) as red_avg_voidgrubs,
avg(blue_dragons) as blue_avg_dragons, avg(red_dragons) as red_avg_dragons,
avg(blue_heralds) as blue_avg_heralds, avg(red_heralds) as red_avg_heralds
from league

--total turret plating, towers destroyed, avg turret plating, towers destroyed

select sum(blue_turret_plates) as blue_total_plates, sum(red_turret_plates) as red_total_plates,
sum(blue_towers_destroyed) as blue_towers, sum(red_towers_destroyed) as red_towers,
avg(blue_turret_plates) as blue_avg_plates, avg(red_turret_plates) as red_avg_plates,
avg(blue_towers_destroyed) as blue_avg_towers, avg(red_towers_destroyed) as red_avg_towers
from league

--total gold/avg gold

select sum(blue_total_gold) as blue_total_gold, sum(red_total_gold) as  red_total_gold,
avg(blue_total_gold) as blue_avg_gold, avg(red_total_gold) as red_avg_gold
from league

--total cs killed/avg cs killed, total jg monsters/avg jg monsters

select sum(blue_total_cs) as blue_total_cs, sum(red_total_cs) as red_total_cs,
avg(blue_total_cs) as blue_avg_cs, avg(red_total_cs) as red_avg_cs,
sum(blue_Total_Jungle_Monsters) as blue_total_jg, sum(red_Total_Jungle_Monsters) as red_total_jg,
avg(blue_Total_Jungle_Monsters) as blue_avg_jg, avg(blue_Total_Jungle_Monsters) as red_avg_jg
from league

--total damage(physical/magical/true)

select sum(blue_total_dmg) as blue_total_dmg, sum(red_total_dmg) as red_total_dmg,
sum(blue_physical_dmg) as blue_total_physical_dmg, sum(red_physical_dmg) as red_total_physical_dmg,
sum(blue_magic_dmg) as blue_total_magic_dmg, sum(red_magic_dmg) as red_total_magic_dmg,
sum(blue_true_dmg) as blue_total_true_dmg, sum(red_true_dmg) as red_total_true_dmg
from league

--avg damage(physical/magical/true)

select avg(blue_total_dmg) as blue_avg_dmg, avg(red_total_dmg) as red_avg_dmg,
avg(blue_physical_dmg) as blue_avg_physical_dmg, avg(red_physical_dmg) as red_avg_physical_dmg,
avg(blue_magic_dmg) as blue_avg_magic_dmg, avg(red_magic_dmg) as red_avg_magic_dmg,
avg(blue_true_dmg) as blue_avg_true_dmg, avg(red_true_dmg) as red_avg_true_dmg
from league