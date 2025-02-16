DELETE from Person
where id not in 
(
    select id
    from
    (
        select min(id) as id 
        from Person 
        group by Email
    )
);

-- Optimized query for faster response 2025-02-16 14:42:23

-- Optimized query for faster response 2025-02-16 14:50:24

-- Optimized query for faster response 2025-02-16 14:58:22
