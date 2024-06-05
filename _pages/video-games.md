---
title: Video Games I Play
categories: footstep
layout: single
tag: game, footstep
permalink: /videogames/
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
    <th>Category</th>
    <th>Rating</th>
    <th>Comment</th>
    <th>Play Year</th>
  </tr>
</thead>
<tbody>
{% for game in site.data.games %}
  <tr>
    <td><a href="{{ game.link }}" class="solid-link" >{{ game.title }}</a></td>
    <td>{{ game.year }}</td>
    <td>{{ game.catagory }}</td>
    <td>
      {% for i in (1..5) %}
        {% if i <= game.rating %}
          &#9733;
        {% endif %}
      {% endfor %}
    </td>
    <td>{{ game.comment }}</td>
    <td>{{ game.play_year }}</td>
  </tr>
{% endfor %}
</tbody>
</table>
