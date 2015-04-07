module CategoriesHelper
  def category_collection(category)
    (category.try(:sub_categories) || []).map{|c| [c.name, c.id]}
  end
end