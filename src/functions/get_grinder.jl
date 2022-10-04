function get_grinder(path)

  grinder_list = readdir(path)

  tmp = CSV.read(path*"/"*grinder_list[1], DataFrame)

  grinders = []
  for grinder in grinder_list
    tmp_d = CSV.read(path*"/"*grinder, 
                     DataFrame, 
                     types = [Int, String, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}, Union{Bool,Missing}],
                    missingstring = "NA")
    tmp_recomendation = recomended_settings(turkish = tmp_d.turkish,
                                            espresso = tmp_d.espresso,
                                            aeropress = tmp_d.aeropress,
                                            moka_pot = tmp_d.moka_pot,
                                            drip_coffe_maker = tmp_d.drip_coffe_maker,
                                            siphon = tmp_d.siphon,
                                            pour_over = tmp_d.pour_over,
                                            french_press = tmp_d.french_press)

    println("=================>", grinder)
    println("=================>", tmp_d.setting)
    println("=================>", tmp_d.label)
    tmp_grinder = grinder(type = grinder,
                          setting = tmp_d.setting,
                          label = tmp_d.label,
                          recomendation = tmp_recomendation)
    push!(grinders, tmp_grinder)
  end
  return grinders
end



