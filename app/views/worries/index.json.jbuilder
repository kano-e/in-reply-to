json.array!(@worries) do |worry|
  json.extract! worry, :id, :detail
  json.url worry_url(worry, format: :json)
end
