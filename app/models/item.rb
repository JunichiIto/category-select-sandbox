class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :sub_category, class_name: 'Category', foreign_key: :sub_category_id

  validates :title, presence: true
end
