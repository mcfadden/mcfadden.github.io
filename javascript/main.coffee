---
---

reverse = (s)->
  s.split("").reverse().join("")

$("li.ead span.domain").html( reverse "{{ site.email.domain }}")
$("li.ead span.hide").first().html("{{site.email.user}}").removeClass('hide');
$("li.ead").attr("style", "");


positionCoverImage = ->
  
  
  if ($(window).height() / $(window).width()) > .8
    $('div.cover-image').css('background-size', "auto 120%")
  else
    $('div.cover-image').css('background-size', "120% auto")
  
  
  
  browserHeight = $(window).height()
  documentHeight = $(document).height()
  scrollOffset = $(document).height() - ($(window).scrollTop() / $(document).height())
  
  $('div.cover-image').css('background-position-y', "#{$(window).scrollTop() / -20}px")
  
  # $(document).height() - $(window).height()
  #
  #
  # console.log("offset: #{scrollOffset}")
  

jQuery ->
  if $('div.cover-image').length > 0
    positionCoverImage()
    $(window).on "scroll", positionCoverImage
    $(window).on "resize", positionCoverImage
