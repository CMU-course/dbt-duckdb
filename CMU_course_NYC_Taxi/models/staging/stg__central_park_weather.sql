with source as (

    select * from {{ source('main', 'central_park_weather') }}

),

renamed as (

    select
        station,
        name,
        date,
        awnd,
        prcp,
        snow,
        snwd,
        tmax,
        tmin,
        filename

    from source

)

select * from renamed