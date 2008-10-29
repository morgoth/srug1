class Post < ActiveRecord::Base
  validates_presence_of     :title,
                            :content
  validates_uniqueness_of   :title,
                            :scope => :category_id
  validates_format_of       :title,
                            :with => /\A[\w\s]+\Z/
  validates_numericality_of :rating,
                            :greater_than => 0
  validate                  :niceness_of_title

  def niceness_of_title
    errors.add :title, "is lousy" unless title.nice?
  end
end
