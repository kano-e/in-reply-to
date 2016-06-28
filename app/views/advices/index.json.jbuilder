json.array!(@advices) do |advice|
  json.extract! advice, :id, :detail, :worry_id, :in_reply_to_id
  json.url advice_url(advice, format: :json)
end
