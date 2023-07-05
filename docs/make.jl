using ConstantRNGs
using Documenter

DocMeta.setdocmeta!(ConstantRNGs, :DocTestSetup, :(using ConstantRNGs); recursive=true)

makedocs(;
    modules=[ConstantRNGs],
    authors="Chad Scherrer <chad.scherrer@gmail.com> and contributors",
    repo="https://github.com/cscherrer/ConstantRNGs.jl/blob/{commit}{path}#{line}",
    sitename="ConstantRNGs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://cscherrer.github.io/ConstantRNGs.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cscherrer/ConstantRNGs.jl",
    devbranch="main",
)
