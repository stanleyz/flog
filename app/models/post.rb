class Post < ActiveRecord::Base
  belongs_to :family
  belongs_to :user
  belongs_to :category
  belongs_to :post_type
  has_many :comments
  has_many :tags

end
