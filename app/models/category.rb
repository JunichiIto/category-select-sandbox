class Category < ActiveRecord::Base
  has_many :sub_categories, ->{ order(:code) }, class_name: 'Category', foreign_key: 'parent_id'
end
