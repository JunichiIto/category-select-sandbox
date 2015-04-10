$ ->
  $("select").select2
    dropdownCssClass: 'dropdown-inverse'

  do ->
    appendOptions = ($select, results) ->
      option = $('<option>')
      $select.append(option)
      $.each results, ->
        option = $('<option>')
        option.val(this.id)
        option.text(this.name)
        $select.append(option)

    resetSelect = ($select) ->
      $select.empty()
      $select.select2('val', '')

    replaceSubCategoryOptions = ->
      url = $(@).find('option:selected').data().subCategoriesPath
      $select = $(@).closest('form').find('#sub-category-select')

      if url?
        $.ajax
          url: url
          dataType: "json"
          success: (results) ->
            $('.field-sub-category').toggle(results.length > 0)
            resetSelect($select)
            appendOptions($select, results)
            $select.select2
              dropdownCssClass: 'dropdown-inverse'
      else
        resetSelect($select)
        $('.field-sub-category').hide()

    $('#category-select').change(replaceSubCategoryOptions)