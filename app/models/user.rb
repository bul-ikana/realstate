class User < ApplicationRecord
  include Clearance::User
  has_secure_password

  def email_optional?
    true
  end

  def self.authenticate(username, password)
    return nil  unless user = find_by_username(username)
    return user if     user.authenticated?(password)
  end
end
