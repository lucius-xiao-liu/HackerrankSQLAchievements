// "https://www.hackerrank.com/challenges/contest-leaderboard"

WITH score(hacker_id, challenge_id, score) as (
select hacker_id,challenge_id, max(submissions.score) 
from submissions 
group by hacker_id, challenge_id
)
select hackers.hacker_id,hackers.name,sum(score.score) as maxscore
from hackers
inner join score on score.hacker_id = hackers.hacker_id
group by hackers.hacker_id, hackers.name
having sum(score.score)>0
order by maxscore desc, hackers.hacker_id asc
