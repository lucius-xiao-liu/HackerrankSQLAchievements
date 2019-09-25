Select hackers.hacker_id, hackers.name
from hackers
inner join submissions on submissions.hacker_id = hackers.hacker_id
inner join challenges on challenges.challenge_id = submissions.challenge_id
inner join difficulty on difficulty.difficulty_level = challenges. difficulty_level
where submissions.score = difficulty.score
group by hackers.hacker_id, hackers.name
having count(*)>1
order by count(challenges.challenge_id) desc, hackers.hacker_id
