SELECT
    w.id, p.age, w.coins_needed, w.power
FROM
    Wands w INNER JOIN Wands_Property p ON w.code = p.code
WHERE
    w.coins_needed = (SELECT MIN(coins_needed)
                    FROM Wands w2 INNER JOIN Wands_Property p2 ON w2.code = p2.code
                    WHERE p2.is_evil = 0 AND w.power = w2.power AND p.age = p2.age)
ORDER BY
    w.power DESC, p.age DESC
