Elephant.count
# SELECT count(*) AS count_all FROM "elephants"

Visit.sum(:duration)
# SELECT sum(duration) AS sum_duration FROM "visits"

Visit.average("duration / 3600.0", :group_by => "day")
# SELECT sum(duration / 3600.0)
#   AS sum_duration_3600_0, day AS day
#   FROM "visits" GROUP BY day
