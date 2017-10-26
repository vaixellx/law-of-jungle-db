$ ->
  $('.js--card-type-selector').on 'click', (e) ->
    e.preventDefault()
    text = $(@).text()
    value = $(@).attr('data-value')

    $('#card_card_type').val(value)
    $('.js--btn-card-type span.text').text(text)

    $('.card-type-icon i').addClass('d-none')
    $(".card-type-icon [data-value='#{value}']").removeClass('d-none')

    $('.card-image-placeholder').addClass('d-none')
    $(".card-image-placeholder[data-value='#{value}']").removeClass('d-none')

    $('.card').attr('class', "card #{value}")

  $('.js--card-creator-selector').on 'click', (e) ->
    e.preventDefault()
    text = $(@).text()
    value = $(@).attr('data-value')

    $('#card_creator').val(value)
    $('.js--btn-card-creator span.text').text(text)

  $('.js--card-status-selector').on 'click', (e) ->
    e.preventDefault()
    text = $(@).text()
    value = $(@).attr('data-value')

    $('#card_status').val(value)
    $('.js--btn-card-status span.text').text(text)

  $('i.fa.fa-comments').popover()
