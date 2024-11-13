{% macro margin(revenue, purchase_cost) %}
    (revenue-purchase_cost)
 {% endmacro %}

{% macro margin_per_cent(margin, revenue) %}
     round(SAFE_DIVIDE(margin,revenue)*100,2)
 {% endmacro %}

