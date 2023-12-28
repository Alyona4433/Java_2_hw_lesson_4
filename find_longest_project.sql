Select project_id ,max(finish_date-start_date) as MONTH_COUNT
from project p
join project_worker ON project_id=project_worker.project_id
group by project_id