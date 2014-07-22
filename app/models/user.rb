class User < ActiveRecord::Base

has_secure_password
 def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
end
