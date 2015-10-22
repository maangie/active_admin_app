require 'rails_helper'

RSpec.describe "staffs/show", type: :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
  end
end
