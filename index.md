---
layout: default
title: "Inicio"
---

# Bienvenido al Blog de Tecnología

Aquí verás los posts más recientes:johny grupolozanos

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      <small>{{ post.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>
