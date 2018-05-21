json.extract! stock, :id, :buying_date, :item_name, :quantity, :stock_category_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)
