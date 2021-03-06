require 'rails_helper'

describe User do
  subject(:user) { build(:user) }

  it { should have_many(:reviews) }
  it { should have_many(:comments) }

  it { should validate_presence_of(:nick) }
  it { should validate_uniqueness_of(:nick) }
  it { should have_secure_password }

  it { should be_valid }
end
