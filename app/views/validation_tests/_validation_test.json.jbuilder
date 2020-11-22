json.extract! validation_test, :id, :userName, :postNum, :age, :url, :mailaddress, :created_at, :updated_at
json.url validation_test_url(validation_test, format: :json)
