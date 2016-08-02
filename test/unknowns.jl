FactCheck.setstyle(:compact)
FactCheck.onlystats(true)

facts("Semantics are still enforced" ) do

    nan = fill(NaN, 3)
    inf = fill(Inf, 3)
    neg = fill(-Inf, 3)

    context("NaN math adds up") do
        @fact isnan(sum(nan)) --> true 
    end

    context("Inf math adds up") do
        @fact sum(inf) --> Inf
    end

    context("NaN math adds up") do
        @fact sum(neg) --> -Inf 
    end
end

facts("Types correctly constructed" ) do

    here     = HereSomewhere(NaN)
    consumed = Consumed(NaN)
    nonsense = Nonsense(NaN)
    shifted  = Shifted(NaN)

    context("HereSomewhere") do
        @fact isnan(here.val) --> true 
        @fact_throws HereSomewhere(1.0)
    end

    context("Consumed") do
        @fact isnan(consumed.val) --> true 
        @fact_throws Consumed(1.0)
    end

    context("Nonsense") do
        @fact isnan(nonsense.val) --> true 
        @fact_throws Nonsense(1.0)
    end

    context("Shifted") do
        @fact isnan(shifted.val) --> true 
        @fact_throws Shifted(1.0)
    end
end
