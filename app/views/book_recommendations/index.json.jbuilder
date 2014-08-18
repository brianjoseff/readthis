json.array!(@book_recommendations) do |book_recommendation|
  json.extract! book_recommendation, :id, :user_id, :book_id, :blurb
  json.url book_recommendation_url(book_recommendation, format: :json)
end
