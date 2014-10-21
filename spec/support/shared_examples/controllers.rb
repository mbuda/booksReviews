shared_examples_for "GET #index" do
  before do
    get :index
  end

  it "responds successfully with an HTTP 200 status code" do
    expect(response).to be_ok
  end

  it "renders the index template" do
    expect(response).to render_template("index")
  end

  it "loads all of the resources into @resourcs" do
    expect(assigns(subject)).to eq([resource])
  end
end

shared_examples_for "GET #show" do
  before do
    get :show, id: resource
  end

  it "assigns the requested resource to @resource" do
    expect(assigns(subject)).to eq(resource)
  end

  it "renders the #show view" do
    expect(assigns(subject)).to eq(resource)
  end
end

shared_examples_for "GET #new" do
  it "renders the #new view" do
    get :new
    expect(response).to render_template("new")
  end
end

shared_examples_for "GET #edit" do
  before do
    get :edit, id: resource
  end

  it "assigns the requested resource to @resource" do
    expect(assigns(subject)).to eq(resource)
  end

  it "renders the #edit view" do
    expect(response).to render_template("edit")
  end
end

shared_examples_for "DELETE #destroy" do
  before do
    @resource = resource
  end

  it "deletes the resource" do
    expect{ delete :destroy, id: @resource }.to change(resource.class, :count).by(-1)
  end

  it "redirects to resources#index" do
    delete :destroy, id: @resource
    expect(response).to redirect_to(action: :index)
  end
end
