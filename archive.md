---
layout: page
title: Archive
---

<p class="message">
  Hey there! This is my archive. 
</p>

<div class="posts">
<ul>
  {% for post in site.posts %}
    <li>{{ post.date | date_to_string }} – <a href="{{ site.baseurl }}/{{ post.url }}">
        {{ post.title }}
      </a></li>

<!--   <div class="post">

 <span class="post-date">{{ post.date | date_to_string }}</span>
    <h3 class="post-title">
      <a href="{{ post.url }}">
        {{ post.title }}
      </a>
    </h3>

    

     {{ post.content }} -->
  {% endfor %}
  </ul>
</div>