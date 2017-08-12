{% macro render(post) %}
<article class="post" itemscope itemtype="http://schema.org/BlogPosting">

  <header class="post-header">
    <h1 class="post-title" itemprop="name headline">{{ post.title }}</h1>
    <p class="post-meta">
      <time datetime="{{ post.date }}" itemprop="datePublished">
        {{ full_date(post.date, 'll') }}
      </time>
      {% if post.categories and post.categories.length %}
        <span class="post-categories">
          <i class="fa fa-angle-right" aria-hidden="true"></i>
          {% for categorie in post.categories %}
            <a href="{{ url_for(categorie.path) }}">{{ categorie.name }}</a>
          {% endfor %}
        </span>
      {% endif %}
    </p>
  </header>

  <div class="post-content" itemprop="articleBody">
    {{ post.content }}
  </div>

  {% if not is_home() %}
    <footer class="post-footer">
      {% if post.tags and post.tags.length %}
        <div class="post-tags">
          {% for tag in post.tags %}
            <a href="{{ url_for(tag.path) }}"><i class="fa fa-tag" aria-hidden="true"></i> {{ tag.name }}</a>
          {% endfor %}
        </div>
      {% endif %}
    </footer>
  {% endif %}

  {% include "../_script/disqus_comments.swig" %}

</article>
{% endmacro %}