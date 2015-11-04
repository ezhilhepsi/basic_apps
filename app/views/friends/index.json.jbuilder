json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :email, :phone_no, :image, :description
  json.url friend_url(friend, format: :json)
end
