@model function extraction_model(coffee::coffee)
  roast ~ Normal(5, 1)
  type ~ Normal(0.2, 0.2)

  linear_predictor = roast * type 
  extraction_time ~ linear_predictor
end

