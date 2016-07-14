require 'rails_helper'

RSpec.describe "my_worries/show", type: :view do
  before(:each) do
    @my_worry = assign(:my_worry, MyWorry.create!(
      :index => "Index"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Index/)
  end
end
