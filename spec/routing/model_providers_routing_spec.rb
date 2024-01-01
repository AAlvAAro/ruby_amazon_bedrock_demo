require "rails_helper"

RSpec.describe ModelProvidersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/model_providers").to route_to("model_providers#index")
    end

    it "routes to #new" do
      expect(get: "/model_providers/new").to route_to("model_providers#new")
    end

    it "routes to #show" do
      expect(get: "/model_providers/1").to route_to("model_providers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/model_providers/1/edit").to route_to("model_providers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/model_providers").to route_to("model_providers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/model_providers/1").to route_to("model_providers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/model_providers/1").to route_to("model_providers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/model_providers/1").to route_to("model_providers#destroy", id: "1")
    end
  end
end
