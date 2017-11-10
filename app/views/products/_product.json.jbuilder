json.extract! product, :id, :name, :description, :link, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
