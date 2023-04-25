using Workshop
using Documenter

DocMeta.setdocmeta!(Workshop, :DocTestSetup, :(using Workshop); recursive=true)

on_ci() = get(ENV, "CI", "false") == "true"

makedocs(;
    modules=[Workshop],
    authors="Maximilian S. Ernst, Moritz Ketzer, Aaron Peikert and contributors",
    repo="https://github.com/aaronpeikert/Workshop.jl/blob/{commit}{path}#{line}",
    sitename="A fresh approach to scientific computing",
    format=Documenter.HTML(;
        prettyurls=on_ci(),
        canonical="https://formal-methods-mpi.github.io/Workshop.jl",
        edit_link="main",
        assets=String[],
        collapselevel = 1
    ),
    pages=[
        "Home" => "index.md",
        "Chapter 0: Workflow" => [
            "Introduction" => "Chapter0/introduction.md",
            "Setup" => "Chapter0/preparation.md",
            "Working with Julia in VSCode" => "Chapter0/usage.md"],
        "Chapter 1: Syntax" => [
            "Theory" => "Chapter1/syntax.md", 
            "Exercise" => "Chapter1/exercise.md"],
        "Chapter 2: Types" => [
            "Theory" => "Chapter2/types.md",
            "Exercise" => "Chapter2/exercise.md"],
        "Chapter 3: Multiple Dispatch" => [
            "Theory" => "Chapter3/dispatch.md",
            "Exercise" => "Chapter3/exercise.md"],
        "Advanced Materials" => [
            "Introduction" => "advanced/intro.md",
            "Automatic Differentiation" => "advanced/dual.md",
            "Workflow" => "advanced/workflow.md"
        ]
    ],
    doctest = false, # use :fix to auto fix.
)

deploydocs(;
    repo="github.com/formal-methods-mpi/Workshop.jl",
    devbranch = "devel",
    push_preview = "push_preview=true" ∈ ARGS
)
