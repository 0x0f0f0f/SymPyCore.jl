using Documenter

using SymPyCore

# xxx need means to incorporate docs for methods defined in SymPy glue package

makedocs(
    sitename = "SymPyCore",
    format = Documenter.HTML(),
    modules = [SymPyCore],
    doctest = false, # <-- problematic
    warnonly = [:cross_references, :missing_docs], # <-- what can be relaxed
    pages = [
        "Home" => "index.md",
        "Introduction" => "introduction.md",
        "Reference/API" => "reference.md",
        "Example usage" => "examples.md",
        "SymPy Tutorial" => [
            "Home"             => "Tutorial/index.md",
            "Preliminaries"    => "Tutorial/preliminaries.md",
            "Introduction"     => "Tutorial/intro.md",
            "Basic operations" => "Tutorial/basic_operations.md",
            "Simplification"   => "Tutorial/simplification.md",
            "Calculus"         => "Tutorial/calculus.md",
            "Solvers"          => "Tutorial/solvers.md",
            "Matrices"         => "Tutorial/matrices.md",
            "Manipulation"     => "Tutorial/manipulation.md",
            "Gotchas"          => "Tutorial/gotchas.md",
#            "printing"         => "Tutorial/printing.md",
            "Next"             => "Tutorial/next.md"
        ],
    ],

)


#=
=#
# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
