require 'rails_helper'

describe Book do
  subject(:book) { build(:book) }

  it { should have_many(:reviews) }

  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:title) }
end
