json.array!(@machine_types) do |machine_type|
  json.extract! machine_type, :id, :name, :description, :quantity
  json.url machine_type_url(machine_type, format: :json)
end
