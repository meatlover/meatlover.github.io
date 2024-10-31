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
        <tr>
          <th>电影名</th>
          <th>上映年份</th>
          <th>观看年份</th>
          <th>适合年龄</th>
          <th>艺术家</th>
          <th id="th1">#</th>
          <th>感想</th></tr>
      </thead>
      <tbody>
        <tr>
          <td>飞驰人生1</td>
          <td>2019</td>
          <td>2019</td>
          <td>25</td>
          <td>韩寒</td>
          <td>5</td>
          <td></td>
        </tr>
        <tr>
          <td>飞驰人生2</td>
          <td>2024</td>
          <td>2024</td>
          <td>30</td>
          <td>韩寒</td>
          <td>5</td>
          <td>抓住机会，不留遗憾</td>
        </tr>
        <tr>
          <td>空之境界剧场版</td>
          <td>2007</td>
          <td>2024</td>
          <td>18</td>
          <td></td>
          <td>4</td>
          <td>不普通人和普通人的爱情故事</td>
        </tr>
        <tr>
          <td>Fate/Zero</td>
          <td>2011</td>
          <td>2011</td>
          <td>35</td>
          <td>中年正义使者回忆录</td>
          <td>5</td>
        </tr>
        <tr>
          <td>Fate/stay night: Heaven's Feel</td>
          <td>2017-2020</td>
          <td>2020</td>
          <td>28</td>
          <td></td>
          <td>5</td>
        </tr>
        <tr>
          <td>电影名</td>
          <td>上映年份</td>
          <td>观看年份</td>
          <td>适合年龄</td>
          <td>艺术家</td>
          <td>感想</td>
        </tr>
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

