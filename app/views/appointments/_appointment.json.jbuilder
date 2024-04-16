json.extract! appointment, :id, :start_at, :end_at, :document_number, :client_name, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
