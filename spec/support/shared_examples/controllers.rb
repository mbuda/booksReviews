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

