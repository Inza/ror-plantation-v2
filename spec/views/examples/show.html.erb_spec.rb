require 'rails_helper'

RSpec.describe "examples/show", type: :view do
  before(:each) do
    @example = assign(:example, Example.create!(
      :title => "Title",
      :text => "MyText",
      :published => false,
      :subject => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
