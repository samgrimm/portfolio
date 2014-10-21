json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :email, :subscribe
  json.url subscriber_url(subscriber, format: :json)
end