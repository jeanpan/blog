{% extends "_layout.swig" %}

{% block title %} {{ page.title }} · {{ config.title }} {% endblock %}

{% block content %}
<article class="post">

  <header class="post-header">
    <h1 class="post-title">{{ page.title }}</h1>
  </header>

  <div class="post-content">
    {{ page.content }}
  </div>
  
</article>
{% endblock %}