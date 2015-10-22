require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  before { @user = AdminUser.new(email: 'foo@example.com') }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:sign_in_count) }
end
