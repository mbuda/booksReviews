require 'rails_helper'

describe 'books/index' do
  subject { page }
  let!(:book) { create(:book) }

  before do
    visit books_path
  end

  it 'contains headline' do
    expect(page).to have_selector(
      'h1', text: 'List of books')
  end

  describe 'books\' table' do
    it 'contains title header' do
      expect(page).to have_selector(
        'th', text: 'Title')
    end

    it 'contains author header' do
      expect(page).to have_selector(
        'th', text: 'Author')
    end

    it 'contains number of reviews header' do
      expect(page).to have_selector(
        'th', text: 'Number of reviews')
    end

    it 'has link to book#show through title' do
      expect(page).to have_link(book.title)
    end

    it 'has author name' do
      expect(page).to have_selector(
        'td', text: 'John Doe')
    end

    it 'has number of added reviews' do
      expect(page).to have_selector(
        'td', text: '0')
    end
  end

  it 'contains link to add new book page' do
    expect(page).to have_link('Add new book')
  end
end
