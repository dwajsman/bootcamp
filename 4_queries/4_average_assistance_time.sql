SELECT (SUM(completed_at - started_at)/COUNT(completed_at)) as average_assistance_request_duration 
FROM assistance_requests;


