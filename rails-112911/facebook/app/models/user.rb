class User < ActiveRecord::Base
  acts_as_authentic

  has_many :friendships,
    :dependent => :destroy
  has_many :friends,
    :through   => :friendships
  has_many :posts

  attr_accessible :email, :name, :password, :password_confirmation
end
