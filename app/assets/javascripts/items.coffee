$ ->
  do ->
    appendOptions = ($select, results) ->
      option = $('<option>')
      $select.append(option)
      $.each results, ->
        option = $('<option>')
        option.val(this.id)
        option.text(this.name)
        $select.append(option)

    replaceSubCategoryOptions = ->
      url = $(@).find('option:selected').data().subCategoriesPath
      $select = $(@).closest('form').find('.sub-category-select')
      if url?
        $.ajax
          url: url
          dataType: "json"
          success: (results) ->
            $('.field-sub-category').toggle(results.length > 0)
            $select.empty()
            appendOptions($select, results)
      else
        $('.field-sub-category').hide()
        $select.empty()

    $('.category-select').change(replaceSubCategoryOptions)