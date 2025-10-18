---
layout: default
title: "Archivo de Artículos"
permalink: /archivo/
---

# Archivo de Artículos

<ul>
{% assign posts_sorted = site.posts | sort: 'date' | reverse %}
{% for post in posts_sorted %}
  <li>
    <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%d %B %Y" }}
  </li>
{% endfor %}
</ul>
