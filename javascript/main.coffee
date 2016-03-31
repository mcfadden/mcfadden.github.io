---
---

reverse = (s)->
  s.split("").reverse().join("")

$(".ead span.domain").html( reverse "{{ site.email.domain }}")
$(".ead span.hide").html("{{site.email.user}}").removeClass('hide');
$(".ead").attr("style", "");


positionCoverImage = ->
  
  if ($(window).height() / $(window).width()) > .8
    $('div.cover-image-container').css('background-size', "auto #{$(window).height() * 1.3}px")
  else
    $('div.cover-image-container').css('background-size', "120% auto")
    
  if ($(window).height() / $(window).width()) > .6
    scale_factor = 40
    #console.log "Vertical Device"
  else
    scale_factor = 20
    #console.log "Horizontal Device"
  
  
  positionY = $(window).scrollTop() / scale_factor * -1
  
  $('div.cover-image-container').css('top', "#{positionY}px")
  
  #console.log(positionY)
  

jQuery ->
  if $('div.cover-image-container').length > 0
    positionCoverImage()
    $(window).on "scroll", positionCoverImage
    $(window).on "resize", positionCoverImage

  $('#imageModal').on 'show.bs.modal', (e)->
    console.log("e")
    console.log(e)
    newSource = $(e.relatedTarget).find("img").attr('src')
    console.log(newSource)
    $('#imageModal .modal-body img').attr('src', newSource)