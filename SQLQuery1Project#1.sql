WITH hotels AS (
  SELECT * FROM dbo.['2018$']
  UNION ALL
  SELECT * FROM dbo.['2019$']
  UNION ALL
  SELECT * FROM dbo.['2020$']
)
select * from hotels
left join dbo.market_segment$
on market_segment$.market_segment = hotels.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal