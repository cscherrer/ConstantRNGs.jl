using FixedRNGs
using Documenter

DocMeta.setdocmeta!(FixedRNGs, :DocTestSetup, :(using FixedRNGs); recursive=true)

makedocs(;
    modules=[FixedRNGs],
    authors="Chad Scherrer <chad.scherrer@gmail.com> and contributors",
    repo="https://github.com/cscherrer/FixedRNGs.jl/blob/{commit}{path}#{line}",
    sitename="FixedRNGs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://cscherrer.github.io/FixedRNGs.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cscherrer/FixedRNGs.jl",
    devbranch="main",
)
