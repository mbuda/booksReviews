require 'rails_helper'

describe 'sessions/new' do
  subject { page }
  before { visit login_path }

  it 'contains field for nickname' do
    expect(page).to have_field('Nick')
  end

  it 'contains field for password' do
    expect(page).to have_field('Password')
  end
end
