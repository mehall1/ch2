json.array!(@microports) do |microport|
  json.extract! microport, :content, :user_id
  json.url microport_url(microport, format: :json)
end