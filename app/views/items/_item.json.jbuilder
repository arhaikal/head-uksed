json.extract! item, :id, :title, :price, :description, :material, :created_at, :updated_at
json.url item_url(item, format: :json)