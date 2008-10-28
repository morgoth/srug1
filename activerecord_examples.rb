# ActiveRecord - brak XMLa
# =====================
# in database.yml
development:
  adapter: mysql
  database: demo
  username: admin
  password: password
  host: localhost

# create script
  create table posts(
    id int auto_increment primary key,
    title varchar(75) )

 ruby script/generate model post  --skip-migration #

 # plik Post.rb
class Post < ActiveRecord::Base
end

# gdzieś w aplikacji
Post.create(:title=>"SRUG")

# ActiveRecord - Migracje
# =====================
ruby script/generate migration add_content_to_posts content:string category_id:integer # sprawdzic !!!

class AddContentToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :content, :string
    add_column :posts, :category_id, :integer
  end

  def self.down
    remove_column :posts, :content
    remove_column :posts, :category_id
  end
end

rake db:migrate #

rake db:migrate VESION=0

# ActiveRecord - Asocjacje
# =====================
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

post = Post.find 15
post.comments.find_all_by_content("Srug")
post.comments.create(:content => 'cos tam')
post.comments.last
post.comments.delete_all

# ActiveRecord - Walidatory
# =====================
class Post < ActiveRecord::Base
  validates_presence_of :title, :content
  validates_uniqueness_of :content
  validates_associated :category, :on => :create
  validate :my_own_validator

  def my_own_validator
    errors.add(:title, "Nie podoba mi się") unless title.nice_and_short?
  end
end

p = Post.create
p.errors.to_a
# => [["title", "can't be blank"], ["content", "can't be blank"], ["content", "has already been taken"]]

p = Post.create(:title =>'nowy', :content=>'hmmm')
# => <Post id: 3, title: "nowy", content: "hmmm", category_id: nil>

# ActiveRecord - Callbacki
# =====================
class Post < ActiveRecord::Base

end

