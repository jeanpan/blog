<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{{ config.description || config.title }}">

{{ open_graph() }}

{% if theme.rss %}
  <link rel="alternate" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml">
{% endif %}

{% if config.highlight.enable %}
  <link href="//fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet" type="text/css">  
{% endif %}

{% if theme.favicon %}
  <link rel="icon" href="{{ theme.favicon }}">
{% endif %}

<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.css') }}?v={{ theme.version }}" />  

{% if not env.debug %}
  {% include "../_script/google-analytics.swig" %}
{% endif %}
