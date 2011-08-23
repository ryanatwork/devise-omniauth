class Authentication < ActiveRecord::Base
  attr_accessible :user_id, :provider, :uid, :access_token, :access_secret

  has_one :user

end
