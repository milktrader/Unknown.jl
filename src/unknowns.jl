abstract Missing

type HereSomewhere{T<:Float64} <: Missing
    
    val::T

    function HereSomewhere{T<:Float64}(x::T)
        x == NaN ? new(x) : error("You're not really lost here are you?")
    end
end

