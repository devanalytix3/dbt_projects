SELECT 1 AS Id, 
       CURRENT_USER() AS User, 
       CURRENT_ACCOUNT() AS Account, 
       CURRENT_DATABASE() AS Database, 
       CURRENT_SCHEMA() AS Schema,
       CURRENT_DATE() AS Date