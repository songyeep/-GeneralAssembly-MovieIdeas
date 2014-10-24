require 'rails_helper'

RSpec.describe "movie_ideas/edit", :type => :view do
  before(:each) do
    @movie_idea = assign(:movie_idea, MovieIdea.create!(
      :synopsis => "MyString",
      :more_info => "MyString"
    ))
  end

  it "renders the edit movie_idea form" do
    render

    assert_select "form[action=?][method=?]", movie_idea_path(@movie_idea), "post" do

      assert_select "input#movie_idea_synopsis[name=?]", "movie_idea[synopsis]"

      assert_select "input#movie_idea_more_info[name=?]", "movie_idea[more_info]"
    end
  end
end
