json.array!(@traxes) do |trax|
  json.extract! trax, :id, :nom, :description
  json.url trax_url(trax, format: :json)
end
