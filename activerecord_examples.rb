# -*- coding: utf-8 -*-

# ruby script/generate model post  --skip-migration #

# plik Post.rb
class Post < ActiveRecord::Base
end

# gdzieś w aplikacji
Post.create(:title=>"SRUG")

# ActiveRecord - Migracje
# =====================
# ruby script/generate migration add_content_to_posts content:string category_id:integer # sprawdzic !!!

# rake db:migrate #

# rake db:migrate VERSION=0

# ActiveRecord - Asocjacje
# =====================
post = Post.find 15
post.comments.find_all_by_content "Srug"
post.comments.create :content => 'cos tam'
post.comments.last
post.comments.delete_all

# ActiveRecord - Walidatory
# =====================

p = Post.create
p.errors.to_a
# => [["title", "can't be blank"], ["content", "can't be blank"], ["content", "has already been taken"]]

p = Post.create(:title =>'nowy', :content=>'hmmm')
# => <Post id: 3, title: "nowy", content: "hmmm", category_id: nil>

# ActiveRecord - Callbacki
# =====================
class Post < ActiveRecord::Base

end

