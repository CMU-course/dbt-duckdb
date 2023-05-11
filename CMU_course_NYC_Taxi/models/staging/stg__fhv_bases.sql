with source as (

    select * from {{ source('main', 'fhv_bases') }}

),

renamed as (

    select
        column0 as base_number,
        column1 as base_name,
        column2 as dba,
        column3 as dba_category,
        filename

    from source

)

select * from renamed