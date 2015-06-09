json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :name, :billing, :address, :shipping, :address, :credit, :card, :number
  json.url user_url(user, format: :json)
end
