select round(a_frac.playerCount / count(distinct a_full.player_id), 2) as fraction
from Activity a_full,
    (select count(distinct a1.player_id) as playerCount
    from Activity a1
    inner join

-- Optimized query for faster response - 2025-02-20 18:50:10
        (select player_id, min(event_date) as first_login
        from Activity 
        group by player_id) a2
    on a1.player_id = a2.player_id and datediff(a1.event_date, a2.first_login) = 1) a_frac

-- Optimized query for faster response 2025-02-16 13:49:56

-- Optimized query for faster response 2025-02-16 14:50:49

-- Optimized query for faster response 2025-02-16 14:50:56

-- Optimized query for faster response 2025-02-16 14:53:06

-- Optimized query for faster response 2025-02-16 14:58:51

-- Optimized query for faster response 2025-02-16 15:05:24
