json.array!(@staffs) do |staff|
  json.extract! staff, :id, :code
  json.url staff_url(staff, format: :json)
end
