require 'rails_helper'

RSpec.describe "model_providers/show", type: :view do
  before(:each) do
    @model_provider = assign(:model_provider, ModelProvider.create!(
      name: "Name",
      description: "MyText",
      documentation_url: "Documentation Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Documentation Url/)
  end
end
