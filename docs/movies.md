---
layout: my
title: Movies
parent: Footprints
nav_order: 1
---
<script src="/assets/js/sortable.js"></script>
<link rel="stylesheet" href="{{ "/assets/css/sortable.css" | relative_url }}"/>

<!--- Ref: https://github.com/tofsjonas/sortable -->
<!--- Ref: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers -->
<table class="sortable">
<thead>
  <tr>
    <th>Title</th>
    <th>Rating</th>
    <th>Comment</th>
    <th>Watch Year</th>
  </tr>
</thead>
<tbody>
{% for movie in site.data.movies %}
  <tr>
    <td><a href="{{ movie.imdb }}" class="solid-link" >{{ movie.title }} ({{ movie.year }})</a></td>
    <td>
      {% for i in (1..5) %}
        {% if i <= movie.rating %}
          &#9733;
        {% endif %}
      {% endfor %}
    </td>
    <td>{{ movie.comment }}</td>
    <td>{{ movie.watch_year }}</td>
  </tr>
{% endfor %}
</tbody>
</table>
