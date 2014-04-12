class Family < ActiveRecord::Base
  has_many :members, :class_name => "FamilyUser" 
  has_many :posts
end
