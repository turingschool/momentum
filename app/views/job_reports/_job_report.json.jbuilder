json.extract! job_report, :id, :sequence, :company_id, :title, :salary, :start_date, :end_date, :created_at, :updated_at
json.url job_report_url(job_report, format: :json)
