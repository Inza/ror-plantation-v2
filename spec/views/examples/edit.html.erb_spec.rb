require 'rails_helper'

RSpec.describe "examples/edit", type: :view do
  before(:each) do
    @example = assign(:example, Example.create!(
      :title => "MyString",
      :text => "MyText",
      :published => false,
      :subject => nil
    ))
  end

  it "renders the edit example form" do
    render

    assert_select "form[action=?][method=?]", example_path(@example), "post" do

      assert_select "input[name=?]", "example[title]"

      assert_select "textarea[name=?]", "example[text]"

      assert_select "input[name=?]", "example[published]"

      assert_select "input[name=?]", "example[subject_id]"
    end
  end
end
