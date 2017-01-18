json.array!(@parts) do |part|
  json.extract! part, :id, :name, :part_no
  json.url part_url(part, format: :json)
end
