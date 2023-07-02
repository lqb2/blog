---
layout: page
title: Archive
---

<!-- <p class="message">
  Hey! This is my archive. It's a work in progress... like everything else on this site, heh. My bullets aren't grouping properly right now so... ¯\_(ツ)_/¯
</p> -->

<div class="posts">

  <ul class="posts">
    {% for mypost in site.posts %}
      
        {% assign fdate = mypost.date | date: '%b %Y' %}
        {% if cur_date != fdate %}
          {% assign cur_date = fdate %}
          <h2>{{ mypost.date | date: '%b %Y' }}</h2>
        {% endif %}
        <li>
          <span class="post-meta">{{ mypost.date | date: "%b %-d, %Y" }} | </span>


          <a href="{{ site.baseurl }}{{ mypost.url }}">{{ mypost.title }}</a>
        </li>
    {% endfor %}
  </ul>
</div>