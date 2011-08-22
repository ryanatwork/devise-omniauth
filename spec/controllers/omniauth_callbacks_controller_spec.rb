require 'spec_helper'

describe Users::OmniauthCallbacksController do

  describe "#facebook" do
    before do
      request.env["devise.mapping"] = Devise.mappings[:user]
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
    end

    it "should create and sign in a new user" do
      get :facebook
      @user = User.last
      @user.email.should == "sample@example.com"
      response.should redirect_to root_path
      subject.current_user.should_not be_nil
    end
  end

  describe "#facebook" do
    before do
      request.env["devise.mapping"] = Devise.mappings[:user]
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
      @user = Factory(:user)
    end

    it "should sign in an existing user" do
      get :facebook
      subject.current_user.should_not be_nil
    end
  end
end
