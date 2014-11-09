require 'rails_helper'

describe 'reviews/index' do
  subject { page }
  let!(:book1) { create(:book) }
  let!(:book2) { create(:another_book) }
  let!(:user) { create(:user) }
  let!(:review1) { create(:review, book: book1, user: user) }
  let!(:review2) { create(:another_review, book: book2, user: user) }
  before do
    visit reviews_path
  end

  it 'contains headline' do
    expect(page).to have_selector(
      'h1', text: 'List of reviews')
  end

  describe 'reviews\' table' do
    it 'contains header with date when review was added' do
      expect(page).to have_selector(
        'th', text: 'Date added')
    end

    it 'contains header with title of review' do
      expect(page).to have_selector(
        'th', text: 'Title')
    end

    it 'contains header with reviewed book' do
      expect(page).to have_selector(
        'th', text: 'Book')
    end

    it 'contains header with reviewer' do
      expect(page).to have_selector(
        'th', text: 'Reviewer')
    end

    it 'has all reviews, despite which book it reviewing' do
      expect(page).to have_css(
        'tr td', count: 8)
    end

    it 'has link to review#show as title' do
      expect(page).to have_link(
        'Example')
    end

    it 'has reviewed book title' do
      expect(page).to have_selector(
        'td', text: 'Examplification')
    end

    it 'has reviewer nick' do
      expect(page).to have_selector(
        'td', text: 'Johny')
    end
  end
end



