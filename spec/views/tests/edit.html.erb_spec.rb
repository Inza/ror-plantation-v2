require 'rails_helper'

RSpec.describe "tests/edit", type: :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :title => "MyString",
      :questions => "MyText"
    ))
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(@test), "post" do

      assert_select "input[name=?]", "test[title]"

      assert_select "textarea[name=?]", "test[questions]"
    end
  end
end
