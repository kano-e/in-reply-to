require 'rails_helper'

RSpec.describe "worries/index", type: :view do
  before(:each) do
    assign(:worries, [
      Worry.create!(
        :detail => "MyText"
      ),
      Worry.create!(
        :detail => "MyText"
      )
    ])
  end

  it "renders a list of worries" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
