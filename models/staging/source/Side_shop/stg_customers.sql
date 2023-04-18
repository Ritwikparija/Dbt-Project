with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from {{ source('Side_shop', 'Customers') }} /* Case sensitive Source_name*/
)

select * from customers;

