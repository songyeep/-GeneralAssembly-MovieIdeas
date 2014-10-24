require 'rails_helper'

RSpec.describe "movie_ideas/show", :type => :view do
  before(:each) do
    @movie_idea = assign(:movie_idea, MovieIdea.create!(
      :synopsis => "Synopsis",
      :more_info => "More Info"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Synopsis/)
    expect(rendered).to match(/More Info/)
  end
end
