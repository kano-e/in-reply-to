require 'rails_helper'

RSpec.describe "worries/edit", type: :view do
  before(:each) do
    @worry = assign(:worry, Worry.create!(
      :detail => "MyText"
    ))
  end

  it "renders the edit worry form" do
    render

    assert_select "form[action=?][method=?]", worry_path(@worry), "post" do

      assert_select "textarea#worry_detail[name=?]", "worry[detail]"
    end
  end
end
