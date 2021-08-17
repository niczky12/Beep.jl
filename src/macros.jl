const default_sound = :boing
const default_error = :blip


macro beep(ex)
    return quote
        try
            local res = $(esc(ex))
            beep(default_sound)
            return res
        catch
            beep(default_error)
            rethrow()
        end
    end
end


macro beep(ex, sound)
    return quote
        try
            local res = $(esc(ex))
            esc(beep($sound))
            return res
        catch
            beep(default_error)
            rethrow()
        end
    end
end


macro beep(ex, sound, error_sound)
    return quote
        try
            local res = $(esc(ex))
            beep($sound)
            return res
        catch
            beep($error_sound)
            rethrow()
        end
    end
end
