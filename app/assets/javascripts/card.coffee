$ ->
  $('.js--card-type-selector').on 'click', (e) ->
    e.preventDefault()
    text = $(@).text()
    value = $(@).attr('data-value')

    $('#card_card_type').val(value)
    $('.js--btn-card-type span.text').text(text)

    $('.card-type-icon i').addClass('d-none')
    $(".card-type-icon [data-value='#{value}']").removeClass('d-none')

  $('.js--card-creator-selector').on 'click', (e) ->
    e.preventDefault()
    text = $(@).text()
    value = $(@).attr('data-value')

    $('#card_creator').val(value)
    $('.js--btn-card-creator span.text').text(text)
