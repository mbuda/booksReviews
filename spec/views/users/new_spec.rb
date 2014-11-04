require 'rails_helper'

describe 'users/new' do
  subject { page }
  let(:user) { build(:user) }
  before do
    visit new_user_path
  end

  it 'displays field for email' do
    expect(page).to have_field('Nick')
  end

  it 'displays field for password' do
    expect(page).to have_field('Password')
  end

  it 'displays field for password confirmation' do
    expect(page).to have_field('Password confirmation')
  end
end
