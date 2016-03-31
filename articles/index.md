---
layout: page
title: Recent Articles
---

I periodically write about projects I'm working on or fun things I've done around the house. Here's a sampling of some recent writings:

{% for post in site.posts  %}
{% capture this_year %}{{ post.date | date: "%Y" }}{% endcapture %}
{% capture next_year %}{{ post.previous.date | date: "%Y" }}{% endcapture %}

{% if forloop.first %}
<h2 class='text-center' id='{{ this_year }}-ref'>&mdash; {{this_year}} &mdash;</h2>
{% endif %}

[{{ post.title }}]({{ post.url }}) - {{post.date | date: "%B"}}

{% if forloop.last %}

{% else %}

{% if this_year != next_year %}
<h2 class='text-center' id='{{ next_year }}-ref'>&mdash; {{next_year}} &mdash;</h2>
{% endif %}

{% endif %}

{% endfor %}