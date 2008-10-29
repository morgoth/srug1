class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments
end

class Category < ActiveRecord::Base
  has_many :posts
end

class Comment < ActiveRecord::Base
  belongs_to :post
end
