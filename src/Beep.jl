module Beep

using WAV

include("sounds.jl")
include("functions.jl")
include("macros.jl")

export beep_sounds
export beep
export @beep
export load_sound

end
