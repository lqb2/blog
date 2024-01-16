---
layout: page
<!-- title: Full Text Archive -->
---

<p class="message">
  This is is a fully searchable of all the blog posts on my site as in it has all the words of every post.
</p>

<div class="posts">

  <ul class="posts">
    {% for mypost in site.posts %}
      <li>
        {% assign fdate = mypost.date | date: '%b %Y' %}
        {% if cur_date != fdate %}
          {% assign cur_date = fdate %}
          <h2>{{ mypost.date | date: '%b of %Y' }}</h2>
        {% endif %}
        <span class="post-meta">{{ mypost.date | date: "%b %-d, %Y" }} | </span>
        <!--<a href="{{ mypost.url | prepend: site.baseurl }}">-->
        <a href="{{ site.baseurl }}&#47;{{ mypost.url }}">{{ mypost.title }}</a>
        {{ mypost.content }}
      </li>
    {% endfor %}
  </ul>

<!-- old archive format, not grouped by month 
<ul>
  {% for post in site.posts %}
    <li>{{ post.date | date_to_string }} – <a href="{{ site.baseurl }}/{{ post.url }}">
        {{ post.title }}
      </a></li>
  {% endfor %}
  </ul>
-->
</div>