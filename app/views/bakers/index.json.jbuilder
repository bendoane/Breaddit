json.array!(@bakers) do |baker|
  json.extract! baker, :id, :username, :email, :crypted_password, :password_salt, :persistence_token
  json.url baker_url(baker, format: :json)
end
