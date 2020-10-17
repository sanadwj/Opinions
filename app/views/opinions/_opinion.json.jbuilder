json.extract! tweet, :id, :user, :created_at, :updated_at
json.url opinion_url(tweet, format: :json)
