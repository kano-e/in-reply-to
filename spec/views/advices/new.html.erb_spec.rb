require 'rails_helper'

RSpec.describe "advices/new", type: :view do
  before(:each) do
    assign(:advice, Advice.new(
      :detail => "MyText",
      :worry => nil,
      :in_reply_to => nil
    ))
  end

  it "renders new advice form" do
    render

    assert_select "form[action=?][method=?]", advices_path, "post" do

      assert_select "textarea#advice_detail[name=?]", "advice[detail]"

      assert_select "input#advice_worry_id[name=?]", "advice[worry_id]"

      assert_select "input#advice_in_reply_to_id[name=?]", "advice[in_reply_to_id]"
    end
  end
end
