{% assign rating = page.rating %}
{% assign max_rating = 5 %}
{% assign full_stars = rating | floor %}
{% assign half_star = rating | modulo: 1 %}
{% assign empty_stars = max_rating | minus: rating | floor %}

[![songs]({{ page.screenshot }})]({{ page.apple_ref }})

