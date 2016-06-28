require 'rails_helper'

RSpec.describe "advices/show", type: :view do
  before(:each) do
    @advice = assign(:advice, Advice.create!(
      :detail => "MyText",
      :worry => nil,
      :in_reply_to => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
