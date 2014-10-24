json.array!(@movie_ideas) do |movie_idea|
  json.extract! movie_idea, :id, :synopsis, :more_info
  json.url movie_idea_url(movie_idea, format: :json)
end
