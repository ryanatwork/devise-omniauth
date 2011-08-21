require 'spec_helper'

describe Users::OmniauthCallbacksController do

  describe "#facebook" do
    before do
      request.env["devise.mapping"] = Devise.mappings[:user]
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
    end

    it "should create and in a new user" do
      get :facebook
      response.should redirect_to new_user_registration_url
    end
  end

end
