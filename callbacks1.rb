class Post < ActiveRecord::Base
  before_validation :sanitize_title, :escape_content
  after_destroy :clear_category_cache
  after_create { |record| record.deliver_notifications }

  def sanitize_title
    title.sanitize!
  end

  protected :sanitize_title
  # ...
end
