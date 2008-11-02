class Post < ActiveRecord::Base
  belongs_to :category

  named_scope :recent, lambda do
    { :conditions => ["created_at > ?", 2.hours.ago] }
  end
  named_scope :published,
              :conditions => { :published => true }
end

Post.recent
# SELECT * FROM "posts"
# WHERE (created_at > '2008-10-29 19:12:15')

Post.recent.published
# SELECT * FROM "posts"
# WHERE (("posts"."published" = 't') AND
#        (created_at > '2008-10-29 19:12:22'))
