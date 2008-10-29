category = Category.find_by_title "SRUG"
post = category.posts.first
post.comments.find_all_by_author "John Doe"
post.comments.create :content => "useful comment"
post.comments.last
post.comments.delete_all
