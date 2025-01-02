using Test
using PackageCompiler

ROOTDIR = joinpath(@__DIR__, "..")
include(joinpath(ROOTDIR, "src", "Template.jl"))

cd(joinpath(ROOTDIR, "src"))
@testset "Template" begin
    @test Template.run() == 0
end

cd(joinpath(ROOTDIR, ".."))
create_app("Template", "Build"; force=true)