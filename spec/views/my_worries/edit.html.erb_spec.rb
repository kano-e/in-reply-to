require 'rails_helper'

RSpec.describe "my_worries/edit", type: :view do
  before(:each) do
    @my_worry = assign(:my_worry, MyWorry.create!(
      :index => "MyString"
    ))
  end

  it "renders the edit my_worry form" do
    render

    assert_select "form[action=?][method=?]", my_worry_path(@my_worry), "post" do

      assert_select "input#my_worry_index[name=?]", "my_worry[index]"
    end
  end
end
