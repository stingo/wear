json.extract! post, :id, :name, :description, :price, :created_at, :updated_at
json.url post_url(post, format: :json)
