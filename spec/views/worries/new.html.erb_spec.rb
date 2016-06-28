require 'rails_helper'

RSpec.describe "worries/new", type: :view do
  before(:each) do
    assign(:worry, Worry.new(
      :detail => "MyText"
    ))
  end

  it "renders new worry form" do
    render

    assert_select "form[action=?][method=?]", worries_path, "post" do

      assert_select "textarea#worry_detail[name=?]", "worry[detail]"
    end
  end
end
