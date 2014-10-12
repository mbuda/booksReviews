require 'rails_helper'

describe ReviewsController do
  let!(:resource) { create(:review) }

  it_behaves_like "GET #index" do
    subject { :reviews }
  end
end

