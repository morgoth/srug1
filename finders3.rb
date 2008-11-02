Student.count
# SELECT count(*) AS count_all FROM "students"

Product.sum(:price)
# SELECT sum(price) AS sum_price FROM "products"

Visit.average("duration / 3600.0", :group_by => "day")
# SELECT sum(duration / 3600.0)
#   AS sum_duration_3600_0, day AS day
#   FROM "visits" GROUP BY day
