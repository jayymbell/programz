json.extract! site, :id, :name, :description, :address_1, :address_2, :address_3, :city, :state, :postal_code, :created_at, :updated_at
json.url site_url(site, format: :json)
