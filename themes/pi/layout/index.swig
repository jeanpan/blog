{% extends "_layout.swig" %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
  <ul class="post-list">
    {% for post in page.posts %}
      <li>
        <span class="post-meta">{{ date(post.date, date_format) }}</span>
        <h2>
          <a class="post-link" href="{{ url_for(post.path) }}">{{ post.title | escape }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>
{% endblock %}