SELECT time, priceA, priceB, title, mpaa, duration 
FROM Show
  JOIN Movie ON 
    id = M_id 
      AND time < NOW() 
      AND time >= NOW() - INTERVAL '20 years'
      AND mpaa = 'R'
      AND duration < 'PT2H';