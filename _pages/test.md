---
title: Albums
categories: menu
layout: single
tag: [footstep]
permalink: /test/
---
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign vids = tag[1] | sort %}

{% if vids != empty %}

  <h2 id="{{tag[0] | uri_escape | downcase}}">{{tag[0]}}</H2>
     <p>
      {% for p in vids %}
     <a href="/{{p.type | downcase}}/"><img src="/assets/img/{{p.type | downcase}}.png" alt="{{p.type}}" title="{{p.type}}"/></a> <a href="{{ p.url }}">{{ p.title }}</a> ({{p.type}}/{{p.category}}) &raquo;  <span class="entry-date"><time datetime="{{ p.date | date_to_xmlschema }}" itemprop="datePublished">{{ p.date | date: "%B %d, %Y" }}</time></span>
     <br />
      {% endfor %}
    </p>
  
{% endif %}

{% endfor %}
