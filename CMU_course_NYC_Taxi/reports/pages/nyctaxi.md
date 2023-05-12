# 🚕 NYC Taxi project

# Trips Data

```dailytrips
select *
from mart.mart__all_trips_daily
where year(date) in (2020, 2021)
```

<BarChart 
    data={dailytrips} 
    x=date 
    y=trips
    series=type 
    yAxisTitle="trips" 
    xAxisTitle="day of year"
/>

<LineChart 
    data={dailytrips} 
    x=date 
    y=average_trip_duration_min
    series=type 
    yAxisTitle="average trip duration" 
    xAxisTitle="day of year"
/>

```bikesweather
select date, trips, precipitation
from staging.stg__daily_citi_bike_trip_counts_and_weather
```
<LineChart 
    data={bikesweather} 
    x=date 
    y={["trips", "precipitation"]} 
    yAxisTitle="trips with precipitation" 
    xAxisTitle="day of year"
/>

