require 'rails_helper'

RSpec.describe Staff, type: :model do
  before { @staff = Staff.new(code: 'VALIDCODE') }

  subject { @staff }

  it { should respond_to(:code) }
end
