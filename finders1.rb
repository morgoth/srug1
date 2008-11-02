Movie.first
# SELECT * FROM "movies" LIMIT 1

Book.last
# SELECT * FROM "books" ORDER BY books.id DESC LIMIT 1

Beer.find(1)
# SELECT * FROM "beers" WHERE ("beers"."id" = 1)

Subject.find([3, 5, 7])
# SELECT * FROM "subjects" WHERE ("subjects"."id" IN (3,5,7))

Post.find(:all,
   :conditions => { :created_at => (5.days.ago)..(1.days.ago) })
# SELECT * FROM "posts" WHERE
#  ("posts"."created_at" BETWEEN '2008-10-28' AND '2008-11-01')


