require 'rails_helper'

RSpec.describe "model_providers/edit", type: :view do
  before(:each) do
    @model_provider = assign(:model_provider, ModelProvider.create!(
      name: "MyString",
      description: "MyText",
      documentation_url: "MyString"
    ))
  end

  it "renders the edit model_provider form" do
    render

    assert_select "form[action=?][method=?]", model_provider_path(@model_provider), "post" do

      assert_select "input[name=?]", "model_provider[name]"

      assert_select "textarea[name=?]", "model_provider[description]"

      assert_select "input[name=?]", "model_provider[documentation_url]"
    end
  end
end
