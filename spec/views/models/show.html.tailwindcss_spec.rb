require 'rails_helper'

RSpec.describe "models/show", type: :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      name: "Name",
      description: "MyText",
      documentation_url: "Documentation Url",
      model_provider: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Documentation Url/)
    expect(rendered).to match(//)
  end
end
