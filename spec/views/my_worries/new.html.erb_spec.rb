require 'rails_helper'

RSpec.describe "my_worries/new", type: :view do
  before(:each) do
    assign(:my_worry, MyWorry.new(
      :index => "MyString"
    ))
  end

  it "renders new my_worry form" do
    render

    assert_select "form[action=?][method=?]", my_worries_path, "post" do

      assert_select "input#my_worry_index[name=?]", "my_worry[index]"
    end
  end
end
