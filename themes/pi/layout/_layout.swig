<!DOCTYPE html>
<html lang="{{ config.language }}">

  <head>

    {% include '_partial/head.swig' %}

    <title>{% block title %}{% endblock %}</title>  

  </head>

  <body>

    {% include '_partial/header.swig' %}

    <main class="page-content" aria-label="Content">
      <div class="wrapper">
        {% block content %}{% endblock %}
      </div>
    </main>

    {% include '_partial/comments.swig' %}

    {% include '_partial/footer.swig' %}

  </body>
  
</html>