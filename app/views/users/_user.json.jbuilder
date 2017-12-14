json.extract! user, :id, :name, :profession, :about, :profile_pic, :signature, :street, :city, :province, :posatl_code, :email, :telephone, :cellphone, :created_at, :updated_at
json.url user_url(user, format: :json)
