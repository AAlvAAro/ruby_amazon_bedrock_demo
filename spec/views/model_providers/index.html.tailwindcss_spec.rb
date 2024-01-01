require 'rails_helper'

RSpec.describe "model_providers/index", type: :view do
  before(:each) do
    assign(:model_providers, [
      ModelProvider.create!(
        name: "Name",
        description: "MyText",
        documentation_url: "Documentation Url"
      ),
      ModelProvider.create!(
        name: "Name",
        description: "MyText",
        documentation_url: "Documentation Url"
      )
    ])
  end

  it "renders a list of model_providers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Documentation Url".to_s, count: 2
  end
end
