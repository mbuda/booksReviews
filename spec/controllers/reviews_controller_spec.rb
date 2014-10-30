require 'rails_helper'

describe ReviewsController do
  let!(:book) { create(:book) }
  let!(:resource) { create(:review, book: book) }

  it_behaves_like 'GET #index' do
    subject { :reviews }
  end

  subject { resource }

  describe 'GET #show' do
    it 'renders the template' do
      get :show, { book_id: book, id: resource }
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it 'renders the #new view' do
      sign_in
      get :new, { book_id: book }
      expect(response).to render_template('new')
    end
  end

  describe 'GET #edit' do
    before do
      sign_in
      get :edit, { book_id: book, id: resource }
    end

    it 'renders the #edit view' do
      expect(response).to render_template('edit')
    end
  end
end

