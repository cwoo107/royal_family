json.extract! profile, :id, :first_name, :last_name, :phone, :address, :street, :city, :state, :zip, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
