json.array!(@projecs) do |projec|
  json.extract! projec, :id, :name, :description, :start_date, :end_date
  json.url projec_url(projec, format: :json)
end
