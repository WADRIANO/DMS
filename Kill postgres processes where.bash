#libraries check
shared_preload_libraries = 'pg_stat_statements'
pg_stat_statements.track = all
#restart postgres if needed
#run query but Please note that pg_stat_statements requires superuser privileges to be created
SELECT 
    query,
    total_time / 1000 AS total_time_ms,
    calls
FROM 
    pg_stat_statements
WHERE 
    user_name = 'web' AND
    total_time / 1000 > 60; -- Filter for queries running > 1 minute (60 seconds)
#kill processes of user web lasting more than 60"
SELECT 
    pg_terminate_backend (pg_stat_activity.pid) 
FROM 
    pg_stat_activity
WHERE 
    pg_stat_activity.query <> '<IDLE>' 
    AND pg_stat_activity.usename = 'web'
    AND now() - pg_stat_activity.query_start >= interval '1 minute';
