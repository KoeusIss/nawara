require 'rails_helper'

RSpec.describe User, type: :model do
  # email validation
  it { should validate_presence_of(:email) }
  it { should allow_value('issam@issam.com').for(:email) }
  it { should_not allow_value('issam.issam.com').for(:email) }

  # password validation
  it { should have_secure_password }
  it { should validate_confirmation_of(:password) }
  it { should validate_length_of(:password).is_at_least(6).on(:create) }
end
