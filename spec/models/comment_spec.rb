require 'rails_helper'

describe Comment do
  subject(:comment) { build(:comment) }

  it { should belong_to(:review) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:text) }
end
