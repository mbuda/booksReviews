require 'rails_helper'

describe BooksController do
  let!(:resource) { create(:book) }
  let!(:other_resource) { attributes_for(:another_book) }
  let!(:invalid_resource) { attributes_for(:invalid_book) }

  it_behaves_like "GET #index" do
    subject { :books }
  end

  subject { :book }

  it_behaves_like "GET #show"
  it_behaves_like "GET #new"
  it_behaves_like "POST #create"
  it_behaves_like "GET #edit"
  it_behaves_like "DELETE #destroy"
end

