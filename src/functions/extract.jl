function extract(coffee::coffee, machine::machine)
  println("extracting one shot of $(coffee.type) (roast: $(coffee.roast) / amount: $(coffee.amount)g)")

  for i in 1:4
    println("...")
    sleep(0.5)
  end
  println("extraction duration was 2s") 
end
