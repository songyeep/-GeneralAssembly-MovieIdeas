require 'rails_helper'

RSpec.describe "movie_ideas/index", :type => :view do
  before(:each) do
    assign(:movie_ideas, [
      MovieIdea.create!(
        :synopsis => "Synopsis",
        :more_info => "More Info"
      ),
      MovieIdea.create!(
        :synopsis => "Synopsis",
        :more_info => "More Info"
      )
    ])
  end

  it "renders a list of movie_ideas" do
    render
    assert_select "tr>td", :text => "Synopsis".to_s, :count => 2
    assert_select "tr>td", :text => "More Info".to_s, :count => 2
  end
end
