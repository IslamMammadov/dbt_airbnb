{% macro test_logging() %}
  { #log("Look at the log result", info = True) #}
{% endmacro %}

--disable logging put # to jinja template