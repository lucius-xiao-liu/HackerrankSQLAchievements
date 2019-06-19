/* "https://www.hackerrank.com/challenges/placements/problem"

Use a comma to separate multiple CTE definitions

*/


with people(id, name, salary, friend_id) as  (
select students.id, students.name, packages.salary, friends.friend_id
    from students
    inner join packages on packages.id = students.id
    inner join friends on friends.id = students.id
),
friendlist(friend_id, salary) as (
select friend_id, packages.salary
    from friends
    inner join packages on packages.id = friends.friend_id
)
select people.name from  people
inner join  friendlist on friendlist.friend_id = people.friend_id
where friendlist.salary > people.salary
order by friendlist.salary
