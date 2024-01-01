require 'rails_helper'

RSpec.describe "models/new", type: :view do
  before(:each) do
    assign(:model, Model.new(
      name: "MyString",
      description: "MyText",
      documentation_url: "MyString",
      model_provider: nil
    ))
  end

  it "renders new model form" do
    render

    assert_select "form[action=?][method=?]", models_path, "post" do

      assert_select "input[name=?]", "model[name]"

      assert_select "textarea[name=?]", "model[description]"

      assert_select "input[name=?]", "model[documentation_url]"

      assert_select "input[name=?]", "model[model_provider_id]"
    end
  end
end
