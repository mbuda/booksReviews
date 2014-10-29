require 'rails_helper'

describe ReviewsController do
  let!(:book) { create(:book) }
  let!(:resource) { create(:review, book: book) }

  it_behaves_like 'GET #index' do
    subject { :reviews }
  end

  describe 'GET #show' do
    it 'renders the template' do
      get :show, { book_id: book, id: resource }
      expect(response).to render_template :show
    end
  end
end

