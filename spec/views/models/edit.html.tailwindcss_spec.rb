require 'rails_helper'

RSpec.describe "models/edit", type: :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      name: "MyString",
      description: "MyText",
      documentation_url: "MyString",
      model_provider: nil
    ))
  end

  it "renders the edit model form" do
    render

    assert_select "form[action=?][method=?]", model_path(@model), "post" do

      assert_select "input[name=?]", "model[name]"

      assert_select "textarea[name=?]", "model[description]"

      assert_select "input[name=?]", "model[documentation_url]"

      assert_select "input[name=?]", "model[model_provider_id]"
    end
  end
end
