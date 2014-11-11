require 'rails_helper'

describe 'reviews/show' do
  subject { page }
  let!(:book) { create(:book) }
  let!(:user) { create(:user) }
  let(:review) { create(:review, book: book, user: user) }

  before do
    visit book_review_path(book, review)
  end

  it 'contains headline' do
    expect(page).to have_selector(
      'h1', text: 'Review info')
  end

  it 'have header for date added' do
    expect(page).to have_selector(
      'dt', text: 'Date added:')
  end

  it 'have header for review title' do
    expect(page).to have_selector(
      'dt', text: 'Title:')
  end

  it 'displays review title' do
    expect(page).to have_selector(
      'dd', text: 'Example')
  end

  it 'have header for reviewer' do
    expect(page).to have_selector(
      'dt', text: 'Reviewer:')
  end

  it 'displays reviewer nick' do
    expect(page).to have_selector(
      'dd', text: 'Johny')
  end

  it 'have header for review text' do
    expect(page).to have_selector(
      'dt', text: 'Text:')
  end

  it 'displays review text' do
    expect(page).to have_selector(
      'dd', text: 'Everything is awesome')
  end
end
