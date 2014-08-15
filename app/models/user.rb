class User < ActiveRecord::Base
  # Remember to create a migration!

  def password
  	@password ||= BCrypt::Password.new(password_hash)
  end

  def password=(secret)
  	@password = BCrypt::Password.create(secret)
  	self.password_hash = @password
  end

end
