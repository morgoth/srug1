class Post < ActiveRecord::Base
  before_validation :sanitize_title, :escape_content
  after_destroy :clear_category_cache

  def sanitize_title
    title.sanitize!
  end
  # ...
end
