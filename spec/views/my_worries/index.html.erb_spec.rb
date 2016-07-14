require 'rails_helper'

RSpec.describe "my_worries/index", type: :view do
  before(:each) do
    assign(:my_worries, [
      MyWorry.create!(
        :index => "Index"
      ),
      MyWorry.create!(
        :index => "Index"
      )
    ])
  end

  it "renders a list of my_worries" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
  end
end
