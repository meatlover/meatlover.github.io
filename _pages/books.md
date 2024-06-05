---
title: Books I Read
categories: footstep
layout: single
tag: book, footstep
permalink: /books/
---
<script src="/assets/js/sortable.js"></script>
<link rel="stylesheet" href="{{ "/assets/css/sortable.css" | relative_url }}"/>

<!--- Ref: https://github.com/tofsjonas/sortable -->
<!--- Ref: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers -->
<table class="sortable">
<thead>
  <tr>
    <th>Title</th>
    <th>Author</th>
    <th>Category</th>
    <th>Rating</th>
    <th>Comment</th>
    <th>Watch Year</th>
  </tr>
</thead>
<tbody>
{% for book in site.data.books %}
  <tr>
    <td><a href="https://isbndb.com/book/{{ book.isbn }}" class="solid-link" >{{ book.title }}</a></td>
    <td>{{ book.author }}</td>
    <td>{{ book.catagory }}</td>
    <td>
      {% for i in (1..5) %}
        {% if i <= book.rating %}
          &#9733;
        {% endif %}
      {% endfor %}
    </td>
    <td>{{ book.comment }}</td>
    <td>{{ book.watch_year }}</td>
  </tr>
{% endfor %}
</tbody>
</table>
