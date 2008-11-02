Post.find(:all, :conditions => ["title LIKE ? ", "Rails"])
# SELECT * FROM "posts" WHERE (title LIKE 'Rails')

Post.find(:first, :include => [:category, :comments])
# SELECT * FROM "posts" LIMIT 1
# SELECT * FROM "categories" WHERE ("categories"."id" IN (1))
# SELECT "comments".* FROM "comments" WHERE ("comments".post_id IN (1))

User.find(:first,
    :conditions => { :login => "srug", :password => "secret" })
# SELECT * FROM "users" WHERE
#   ("users"."password" = 'secret' AND "users"."login" = 'srug')

User.find(:first,
    :conditions => { :login => ["srug", "Srug", "SRUG"]})
# SELECT * FROM "users" WHERE
#   ("users"."login" IN ('srug','Srug','SRUG')) LIMIT 1
