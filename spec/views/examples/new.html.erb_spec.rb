require 'rails_helper'

RSpec.describe "examples/new", type: :view do
  before(:each) do
    assign(:example, Example.new(
      :title => "MyString",
      :text => "MyText",
      :published => false,
      :subject => nil
    ))
  end

  it "renders new example form" do
    render

    assert_select "form[action=?][method=?]", examples_path, "post" do

      assert_select "input[name=?]", "example[title]"

      assert_select "textarea[name=?]", "example[text]"

      assert_select "input[name=?]", "example[published]"

      assert_select "input[name=?]", "example[subject_id]"
    end
  end
end
