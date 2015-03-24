---
---

reverse = (s)->
  s.split("").reverse().join("")

$("li.ead span.domain").html( reverse "{{ site.email.domain }}")
$("li.ead span.hide").first().html("{{site.email.user}}").removeClass('hide');
$("li.ead").attr("style", "");