# Files sourced from: https://www.wavsource.com
sounds_folder = joinpath(dirname(pathof(Beep)), "sounds")
readdir(sounds_folder)

beep_sounds = Dict{Symbol, Tuple{Array{Float64, 2}, Float64}}()

for fname in readdir(sounds_folder)

    wav_file = wavread(joinpath(sounds_folder, fname))

    sound_symbol = Symbol(replace(fname, ".wav" => ""))
    beep_sounds[sound_symbol] = (wav_file[1], wav_file[2])
end