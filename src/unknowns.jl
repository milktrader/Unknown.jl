import Base: show

abstract Missing 

type HereSomewhere <: Missing
    val::Float64
    HereSomewhere(x) = isnan(x) ? new(x) : error("You're not really lost here are you?")
end

type Consumed <: Missing
    val::Float64
    Consumed(x) = isnan(x) ? new(x) : error("Value was actually generated afterall, your lucky day!")
end

type Nonsense <: Missing
    val::Float64
    Nonsense(x) = isnan(x) ? new(x) : error("This actually does make sense.")
end

type Shifted <: Missing
    val::Float64
    Shifted(x) = isnan(x) ? new(x) : error("No shift has occurred.")
end

function show(io::IO, u::HereSomewhere)
    println()
    println("Exists but is not known")
end

function show(io::IO, u::Consumed)
    println()
    println("Not enough previous data to generate a meaningful value")
end

function show(io::IO, u::Nonsense)
    println()
    println("Doesn't make sense in known universe")
end

function show(io::IO, u::Shifted)
    println()
    println("Doesn't make sense in known universe")
end
