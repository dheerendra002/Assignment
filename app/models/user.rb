class User < ActiveRecord::Base
  # @param [Object] password

# @param [Object] username
def self.authenticate(username, password)
  #return 1
  user2 = find_by_username(username)
  u = find_by_password(password)
  puts user2

 if user2  && (user2 == u)
   return 1
 else
   return false
 end




end

end



