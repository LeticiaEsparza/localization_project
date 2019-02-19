view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    group_label: "IDs"
    label: "id"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    group_label: "IDs"
    label: "inventory_item_id"
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    group_label: "IDs"
    type: number
    label: "order_id"
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    label: "returned"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    label: "sale_price"
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: count {
    label: "count"
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }
}
