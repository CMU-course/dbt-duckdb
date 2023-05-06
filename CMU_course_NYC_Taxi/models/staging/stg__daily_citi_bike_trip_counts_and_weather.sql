with source as (

    select * from {{ source('main', 'daily_citi_bike_trip_counts_and_weather') }}

),

renamed as (

    select
        date,
        trips,
        precipitation,
        snow_depth,
        snowfall,
        max_temperature,
        min_temperature,
        average_wind_speed,
        dow,
        year,
        month,
        holiday,
        stations_in_service,
        weekday,
        weekday_non_holiday,
        filename

    from source

)

select * from renamed