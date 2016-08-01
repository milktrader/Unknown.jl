FactCheck.setstyle(:compact)
FactCheck.onlystats(true)

nan = fill(NaN, 3)
inf = fill(Inf, 3)
neg = fill(-Inf, 3)

facts("Semantics are still enforced" ) do

    context("NaN math adds up") do
        @fact sum(nan) --> NaN
    end

    context("Inf math adds up") do
        @fact sum(inf) --> Inf
    end

    context("NaN math adds up") do
        @fact sum(neg) --> -Inf 
    end
end
