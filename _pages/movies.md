---
title: Movies
categories: life
layout: single
tag: [movie, artist, list, table]
permalink: /movies/
---

<script src="/assets/js/sortable.js"></script>

<div class="mc_row">
  <div class="mc_column">
    <table class="sortable">
      <thead>
        <tr><th>电影名</th><th>上映年份</th><th>观看年份</th><th>艺术家</th><th id="th1">#</th><th>感想</th></tr>
      </thead>
      <tbody>
        <tr><td>飞驰人生1</td><td>2019</td><td>2019</td><td>韩寒</td><td>5</td><td></td></tr>
        <tr><td>飞驰人生2</td><td>2024</td><td>2024</td><td>韩寒</td><td>5</td><td>抓住机会，不留遗憾</td></tr>
        <tr><td>绣春刀</td><td>2014</td><td>2014</td><td>路阳, 张震, 王千源</td><td>4</td><td></td></tr>
        <tr><td>绣春刀2</td><td>2017</td><td>2017</td><td>路阳, 张震</td><td>4</td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
      </tbody>
    </table>
  </div>
  <script>
    window.addEventListener('load', function () {
      const el1 = document.getElementById('th1')
      if (el1) {
        el1.click()
      }
    })
  </script>
</div>

