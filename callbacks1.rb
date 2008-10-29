class Post < ActiveRecord::Base
  before_validation :sanitaze_title, :escape_content
  after_destroy :clear_category_cache
  after_create { |record| record.deliver_notifications }

  protected
  def sanitize_title
    title.sanitize!
  end
  # ...
end
