{% macro var1() %}

  {% set name_jinja = 'Islam' %}
  {{ log("Hello "~ name_jinja, info = True) }}

  {{ log("Hello dbt learner "~var("user_name","No user name set")~"!", info = True)}}

{% endmacro %}