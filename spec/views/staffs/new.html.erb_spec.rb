require 'rails_helper'

RSpec.describe "staffs/new", type: :view do
  before(:each) do
    assign(:staff, Staff.new(
      :code => "MyString"
    ))
  end

  it "renders new staff form" do
    render

    assert_select "form[action=?][method=?]", staffs_path, "post" do

      assert_select "input#staff_code[name=?]", "staff[code]"
    end
  end
end
