require 'rails_helper'

describe 'books/new' do
  subject { page }

  before do
    sign_in
    visit new_book_path
  end

  it 'displays headline' do
    expect(page).to have_selector(
      'h1', text: 'Add new book')
  end

  describe 'form' do
    it 'have title label' do
      expect(page).to have_selector(
        'label', text: 'Title')
    end

    it 'have title field' do
      expect(page).to have_field('Title')
    end

    it 'have author label' do
      expect(page).to have_selector(
        'label', text: 'Author')
    end

    it 'have author field' do
      expect(page).to have_field('Author')
    end

  end
end
