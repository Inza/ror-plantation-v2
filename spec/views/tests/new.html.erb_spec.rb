require 'rails_helper'

RSpec.describe "tests/new", type: :view do
  before(:each) do
    assign(:test, Test.new(
      :title => "MyString",
      :questions => "MyText"
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input[name=?]", "test[title]"

      assert_select "textarea[name=?]", "test[questions]"
    end
  end
end
