class Post < ActiveRecord::Base
end

Post.create :title => "SRUG",
            :content => "Ruby on Rails"
