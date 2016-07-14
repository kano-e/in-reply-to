json.array!(@my_worries) do |my_worry|
  json.extract! my_worry, :id, :index
  json.url my_worry_url(my_worry, format: :json)
end
