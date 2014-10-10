require 'rails_helper'

describe BooksController do
  let!(:resource) { create(:book) }

  it_behaves_like "GET #index" do
    subject { :books }
  end
end

