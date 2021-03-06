require 'rails_helper'

describe 'books/edit' do
  let(:book) { create(:book) }
  subject { page }

  before do
    sign_in
    visit edit_book_path(book)
  end

  it 'displays headline' do
    expect(page).to have_selector(
      'h1', text: 'Edit book')
  end

  it 'render form partial' do
    expect(response).to render_template(:partial => "_form")
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
