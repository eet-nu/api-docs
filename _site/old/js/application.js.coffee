$ ->
  $('.navbar-fixed-top a[title]').each ->
    anchor = $ this
    anchor.tooltip placement: 'bottom', title: anchor.title
  