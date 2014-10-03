require 'rails_helper'

describe Review do
  subject(:review) { build(:review) }

  it { should belong_to(:book) }
  it { should belong_to(:user) }
  it { should have_many(:comments) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should be_valid }
end
