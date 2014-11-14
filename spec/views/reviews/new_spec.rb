require 'rails_helper'

describe 'reviews/new' do
  let!(:book) { create(:book) }
  subject { page }

  before do
    sign_in
    visit new_book_review_path(book)
  end

  it 'displays headline' do
    expect(page).to have_selector(
      'h1', text: 'Add new review')
  end

  it 'render form partial' do
    expect(response).to render_template(:partial => '_form')
  end

  describe 'form' do
    it 'have title label' do
      expect(page).to have_selector(
        'label', text: 'Title')
    end

    it 'have title field' do
      expect(page).to have_field('Title')
    end

    it 'have description label' do
      expect(page).to have_selector(
        'label', text: 'Description')
    end

    it 'have description field' do
      expect(page).to have_field('Description')
    end
  end
end

