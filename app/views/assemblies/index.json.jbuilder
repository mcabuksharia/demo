json.array!(@assemblies) do |assembly|
  json.extract! assembly, :id, :name, :manufacturing_date
  json.url assembly_url(assembly, format: :json)
end
