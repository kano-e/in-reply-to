require 'rails_helper'

RSpec.describe "advices/index", type: :view do
  before(:each) do
    assign(:advices, [
      Advice.create!(
        :detail => "MyText",
        :worry => nil,
        :in_reply_to => nil
      ),
      Advice.create!(
        :detail => "MyText",
        :worry => nil,
        :in_reply_to => nil
      )
    ])
  end

  it "renders a list of advices" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
