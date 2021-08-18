function beep(sound::Tuple{Matrix{<:AbstractFloat}, <:AbstractFloat})::Nothing
    wavplay(sound[1], sound[2])
    return nothing
end

function beep(sound::Symbol)::Nothing
    @assert sound ∈ keys(beep_sounds) "No such sound. Check out: `keys(beep_sounds)`."

    sound_to_play = beep_sounds[sound]
    beep(sound_to_play)
end


function load_sound(fname::String)::Tuple{Matrix{<:AbstractFloat}, <:AbstractFloat}
    raw_wav = wavread(fname)
    return (raw_wav[1], raw_wav[2])
end

