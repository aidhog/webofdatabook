SELECT time, priceA, priceB, title, mpaa, duration 
FROM Show
  JOIN wodcine.Movie ON 
    id = M_id 
      AND time < NOW() + INTERVAL '1 day'
      AND time >= NOW();