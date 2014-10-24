require 'rails_helper'

RSpec.describe "movie_ideas/new", :type => :view do
  before(:each) do
    assign(:movie_idea, MovieIdea.new(
      :synopsis => "MyString",
      :more_info => "MyString"
    ))
  end

  it "renders new movie_idea form" do
    render

    assert_select "form[action=?][method=?]", movie_ideas_path, "post" do

      assert_select "input#movie_idea_synopsis[name=?]", "movie_idea[synopsis]"

      assert_select "input#movie_idea_more_info[name=?]", "movie_idea[more_info]"
    end
  end
end
