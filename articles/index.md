---
layout: page
title: Recent Articles
---

I periodically write about projects I'm working on or fun things around the house. Here's a sampling of some recent writings:
{% for post in site.posts  %}

[{{ post.title }}]({{ post.url }}) - {{post.date | date: "%B %Y"}}

{% endfor %}