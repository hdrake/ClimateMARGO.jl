push!(LOAD_PATH,"../src/")

using Documenter, ClimateMARGO

pages = [
    "Home" => "index.md",
    "Installation instructions" => "installation_instructions.md",
    "Theory" => "theory.md",
    "Submodules" => [
        "Domain" => "Submodules/Domain.md",
        "Physics" => "Submodules/Physics.md",
        "Economics" => "Submodules/Economics.md",
        "Controls" => "Submodules/Controls.md",
    ],
    "Diagnostics" => "diagnostics.md",
    "Optimization" => "optimization.md",
    "Function index" => "function_index.md"
]

makedocs(
    sitename="ClimateMARGO.jl",
    doctest = true,
    authors = "Henri F. Drake",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
    ),
    pages = pages
)

deploydocs(repo = "github.com/hdrake/ClimateMARGO.jl.git",)
