require 'rails_helper'

RSpec.describe "worries/show", type: :view do
  before(:each) do
    @worry = assign(:worry, Worry.create!(
      :detail => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
