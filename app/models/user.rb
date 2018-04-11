class User < ApplicationRecord
  validates :name, presence:true, length:{minimum:4, maximum:16},
              uniqueness:true
  VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, length:{maximum:255},
              format:{with:VALID_EMAIL_REGEX},
              uniqueness:true
  validates :password, presence:true, length:{minimum:6, maximum:16},
              uniqueness:true, confirmation:true
  validates :password_confirmation, presence:true, length:{minimum:6, maximum:16}
end
