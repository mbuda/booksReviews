require 'rails_helper'

describe BooksController do
  let!(:resource) { create(:book) }

  it_behaves_like "GET #index" do
    subject { :books }
  end

  subject { :book }

  it_behaves_like "GET #show"
  it_behaves_like "GET #new"
  it_behaves_like "GET #edit"
  it_behaves_like "DELETE #destroy"
end

