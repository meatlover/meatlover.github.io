{% assign rating = page.rating %}
{% assign max_rating = 5 %}
{% assign full_stars = rating | floor %}
{% assign half_star = rating | modulo: 1 %}
{% assign empty_stars = max_rating | minus: rating | floor %}

<ul class="rating" style="font-size:smaller;">
  {% for i in (1..full_stars) %}
    <i class="fa-solid fa-star"></i> 
  {% endfor %}
  {% if half_star >= 0.5 %}
    <i class="far fa-star-half-stroke"></i> 
  {% endif %}
  {% for i in (1..empty_stars) %}
    <i class="far fa-star"></i> 
  {% endfor %}
</ul>

[![songs]({{ page.screenshot }})]({{ page.apple_ref }})

