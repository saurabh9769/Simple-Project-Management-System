json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :status, :start_date, :end_date
  json.url task_url(task, format: :json)
end
