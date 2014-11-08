require 'rails_helper'

describe 'books/show' do
  subject { page }
  let(:book) { create(:book) }
  let!(:review) { create(:review, book: book) }
  before do
    visit book_path(book)
  end

 it 'contains headline' do
   expect(page).to have_selector(
     'h1', text: 'Book info')
 end

 it 'has title field' do
   expect(page).to have_selector(
     'dt', text: 'Title:')
 end

 it 'displays book title' do
   expect(page).to have_selector(
     'dd', text: 'Examplification')
 end

 it 'has author field' do
   expect(page).to have_selector(
     'dt', text: 'Author:')
 end

 it 'displays book author' do
   expect(page).to have_selector(
     'dd', text: 'John Doe')
 end

 it 'has link to edit book' do
   expect(page).to have_link(
     'Edit', edit_book_path(book))
 end

  it 'has link to delete book' do
    expect(page).to have_link(
      'Destroy', book_path(book))
  end

  describe 'reviews\' section' do
    it 'has reviews headline' do
      expect(page).to have_selector(
        'h3', text: 'Reviews:')
    end

    it 'has list of reviews belonging to the book' do
      expect(page).to have_css(
        'li', count: 1)
    end

    it 'displaying link to each review' do
      expect(page).to have_link(
        'Example', book_review_path(book, review))
    end

    it 'has link to add new review' do
      expect(page).to have_link(
        'Add new review', new_book_review_path(book))
    end
  end
end
