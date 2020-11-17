require "rails_helper"

RSpec.describe UserBalancesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_balances").to route_to("user_balances#index")
    end

    it "routes to #new" do
      expect(get: "/user_balances/new").to route_to("user_balances#new")
    end

    it "routes to #show" do
      expect(get: "/user_balances/1").to route_to("user_balances#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_balances/1/edit").to route_to("user_balances#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/user_balances").to route_to("user_balances#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_balances/1").to route_to("user_balances#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_balances/1").to route_to("user_balances#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_balances/1").to route_to("user_balances#destroy", id: "1")
    end
  end
end
