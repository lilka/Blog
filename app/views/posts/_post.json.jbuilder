json.extract! post, :id, :title, :hook, :body, :published_at, :draft, :created_at, :updated_at
json.url post_url(post, format: :json)
