json.extract! customer, :id, :customername, :contactname, :address, :city, :postalcode, :country, :created_at, :updated_at
json.url customer_url(customer, format: :json)