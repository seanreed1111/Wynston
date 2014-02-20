json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :about_me, :picture, :phone
  json.url user_url(user, format: :json)
end
