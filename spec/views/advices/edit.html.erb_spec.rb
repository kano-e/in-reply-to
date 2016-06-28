require 'rails_helper'

RSpec.describe "advices/edit", type: :view do
  before(:each) do
    @advice = assign(:advice, Advice.create!(
      :detail => "MyText",
      :worry => nil,
      :in_reply_to => nil
    ))
  end

  it "renders the edit advice form" do
    render

    assert_select "form[action=?][method=?]", advice_path(@advice), "post" do

      assert_select "textarea#advice_detail[name=?]", "advice[detail]"

      assert_select "input#advice_worry_id[name=?]", "advice[worry_id]"

      assert_select "input#advice_in_reply_to_id[name=?]", "advice[in_reply_to_id]"
    end
  end
end
