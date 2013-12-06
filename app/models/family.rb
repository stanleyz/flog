class Family < ActiveRecord::Base
  has_many :members, :through => :user_families, :class_name => "Users" 
end
