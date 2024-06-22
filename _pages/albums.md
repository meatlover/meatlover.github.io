---
title: Albums I Listen
categories: catalog
layout: single
permalink: /albums/
---

## 评分标准

<i class="fa-solid fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i> - 不认可

<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i> - 可以入耳

<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="far fa-star"></i>
<i class="far fa-star"></i> - 有闪光之处，闲时可偶尔拿来一听

<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i> 
<i class="far fa-star"></i> - 不可多得的作品，常年身居背景playlist

<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i>
<i class="fa-solid fa-star"></i> 
<i class="fa-solid fa-star"></i> - 歌曲已然成为我的一部分


## 专辑列表

<script src="/assets/js/sortable.js"></script>
<link rel="stylesheet" href="{{ "/assets/css/sortable.css" | relative_url }}"/>

<!--- Ref: https://github.com/tofsjonas/sortable -->
<!--- Ref: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers -->
<table class="sortable">
<thead>
  <tr>
    <th>Title</th>
    <th>Year</th>
    <th>Artist</th>
    <th>Rating</th>
  </tr>
</thead>
<tbody>
{% for post in site.posts %}
  {% if post.tags contains 'album' %}

  {% assign rating = post.rating %}
  {% assign max_rating = 5 %}
  {% assign full_stars = rating | floor %}
  {% assign half_star = rating | modulo: 1 %}
  {% assign empty_stars = max_rating | minus: rating | floor %}
  
  <tr>
    <td><a href="{{ post.url }}">{{ post.title }}</a></td>
    <td>{{ post.year }}</td>
    <td>{{ post.artist[0] }}</td>
    <td>
      {% for i in (1..full_stars) %}
        <i class="fa-solid fa-star"></i>
      {% endfor %}
      {% if half_star >= 0.5 %}
        <i class="far fa-star-half-stroke"></i>
      {% endif %}
      {% for i in (1..empty_stars) %}
        <i class="far fa-star"></i>
      {% endfor %}
    </td>
  </tr>
  {% endif %}
{% endfor %}
</tbody>
</table>
