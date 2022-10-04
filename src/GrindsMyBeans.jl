module GrindsMyBeans

import Base.@kwdef
using CSV
using DataFrames
using Distributions
using Turing


include("types/coffee.jl")
include("types/machine.jl")
include("types/recomended_settings.jl")
include("types/grinder.jl")

include("functions/extract.jl")
include("functions/get_grinder.jl")

include("extraction_model.jl")

end # module
