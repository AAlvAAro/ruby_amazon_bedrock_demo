require 'rails_helper'

RSpec.describe "model_providers/new", type: :view do
  before(:each) do
    assign(:model_provider, ModelProvider.new(
      name: "MyString",
      description: "MyText",
      documentation_url: "MyString"
    ))
  end

  it "renders new model_provider form" do
    render

    assert_select "form[action=?][method=?]", model_providers_path, "post" do

      assert_select "input[name=?]", "model_provider[name]"

      assert_select "textarea[name=?]", "model_provider[description]"

      assert_select "input[name=?]", "model_provider[documentation_url]"
    end
  end
end
