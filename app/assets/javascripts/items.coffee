$ ->
  appendOptions = ($select, results) ->
    option = $('<option>')
    $select.append(option)
    $.each results, ->
      option = $('<option>')
      option.val(this.id)
      option.text(this.name)
      $select.append(option)

  replaceSubCategoryOptions = ->
    category_id = $(@).val()
    $select = $(@).closest('form').find('.sub-category-select')
    $select.empty()
    if category_id.length > 0
      $.ajax
        url: "/categories/#{category_id}/sub_categories"
        dataType: "json"
        success: (results) ->
          $('.field-sub-category').toggle(results.length > 0)
          appendOptions($select, results)
    else
      $('.field-sub-category').hide()

  $('.category-select').change(replaceSubCategoryOptions)