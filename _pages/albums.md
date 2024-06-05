---
title: Albums I Listen
categories: footstep
layout: single
tag: music, album, footstep
permalink: /albums/
---
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
    <th>Comment</th>
    <th>Listen Year</th>
  </tr>
</thead>
<tbody>
{% for album in site.data.albums %}
  <tr>
    <td><a href="{{ album.link }}" class="solid-link" >{{ album.title }})</a></td>
    <td>{{ album.year }}</td>
    <td>{{ album.artist }}</td>
    <td>
      {% for i in (1..5) %}
        {% if i <= album.rating %}
          &#9733;
        {% endif %}
      {% endfor %}
    </td>
    <td>{{ album.comment }}</td>
    <td>{{ album.listen_year }}</td>
  </tr>
{% endfor %}
</tbody>
</table>
