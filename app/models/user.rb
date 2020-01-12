class User < ApplicationRecord
  has_secure_password

  validates:username, presence:true, length:{within: 4..20}
  validates:email, presence:true, uniqueness:true
end
