require 'rails_helper'

RSpec.describe "staffs/index", type: :view do
  before(:each) do
    assign(:staffs, [
      Staff.create!(
        :code => "Code"
      ),
      Staff.create!(
        :code => "Code"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
