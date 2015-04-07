module CategoriesHelper
  def category_collection(category)
    (category.try(:sub_categories) || []).map do |c|
      [c.name, c.id, { data: { sub_categories_path: category_sub_categories_path(c) } }]
    end
  end
end