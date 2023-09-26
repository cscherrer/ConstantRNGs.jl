# ConstantRNGs

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://cscherrer.github.io/ConstantRNGs.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://cscherrer.github.io/ConstantRNGs.jl/dev/)
[![Build Status](https://github.com/cscherrer/ConstantRNGs.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cscherrer/ConstantRNGs.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/cscherrer/ConstantRNGs.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/cscherrer/ConstantRNGs.jl)

Someimes we have code that generates random values, but we don't really care about the randomness. Maybe we just need to know the shape of the result, or we're doing [smoke testing](https://en.wikipedia.org/wiki/Smoke_testing_(software)). In these cases, the result of random sampling would be fine, but we might like to have something simpler without unnecessary overhead.

For example,
```julia
julia> using Random, ConstantRNGs

julia> randn(ConstantRNG())
0.0

julia> rand(ConstantRNG())
0.5

julia> randexp(ConstantRNG())
1.0
```


As always, there's a relevant [XKCD](https://xkcd.com/221/)
![](https://imgs.xkcd.com/comics/random_number.png)
