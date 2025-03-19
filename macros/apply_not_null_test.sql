-- can't make it work in the schema yaml, I should try again
{% macro apply_not_null_tests(model_name) %}
  {% set columns = dbt_utils.get_columns_in_relation(ref(model_name)) %}

  {% for column in columns %}
    - name: {{ column.name }}
      description: "Ensures the column is not null"
      tests:
        - not_null
  {% endfor %}
{% endmacro %}
