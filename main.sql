-- Nejaktuálnější verze inzerátu, každý pouze jednou 

create or replace table "unikatni_inzeraty" as 
select
*
from "jobs_cz_full_text_history"
qualify row_number() over (partition by "id" order by "date" desc) = 1;