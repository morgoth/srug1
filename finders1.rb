Movie.first
# SELECT * FROM "movies" LIMIT 1

Book.last
# SELECT * FROM "books" ORDER BY books.id DESC LIMIT 1

Beer.find(1)
# SELECT * FROM "beers" WHERE ("beers"."id" = 1)

Subject.find([3, 5, 7])
# SELECT * FROM "subjects" WHERE ("subjects"."id" IN (3,5,7))

Student.all(:conditions => { :beer_count => 10..20 })
# SELECT * FROM "students" WHERE
#  ("students"."beer_count" BETWEEN '10' AND '20')


