{% macro render() %}
<section id="archive" class="archive">

  {% if page.tag %}
    <div class="archive-title tag">
      <h2 class="archive-name"><i class="fa fa-tags" aria-hidden="true"></i> {{ page.tag }}</h2>
    </div>
  {% elif page.category %}
    <div class="archive-title category">
      <h2 class="archive-name"><i class="fa fa-folder-open-o" aria-hidden="true"></i> {{ page.category }}</h2>
    </div>
  {% elif page.archive %}
    <div class="archive-title">
      <h2 class="archive-name"> All </h2>
      <span class="archive-post-counter">
        {{ _p("counter.archives", site.posts.length) }}
      </span>
    </div>
  {% endif %}

  {% for post in page.posts %}
    {% if page.archive %}
      {% set year %}
      {% set post.year = date(post.date, 'YYYY') %}

      {% if post.year !== year %}
        {% set year = post.year %}
        <div class="collection-title">
          <h2 class="archive-year">{{ year }}</h2>
        </div>
      {% endif %}
    {% endif %}
    
    <div class="archive-post">
      <span class="archive-post-time">
        {% if page.archive %}
          {{ date(post.date, 'MM-DD') }}
        {% else %}
          {{ date(post.date, 'YYYY-MM-DD') }}
        {% endif %}
      </span>
      <span class="archive-post-title">
        <a href="{{ url_for(post.path) }}" class="archive-post-link">
          {{ post.title }}
        </a>
      </span>
    </div>
  {% endfor %}

</section>
{% endmacro %}