class Category < ActiveRecord::Base
  has_many   :sub_categories, class_name: 'Category', foreign_key: 'parent_id'
  belongs_to :categories, class_name: 'Category', foreign_key: 'parent_id'
end
