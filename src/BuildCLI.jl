module BuildCLI
include("./utils.jl")
export runcli

function runcli(f, args=ARGS)
    ms = collect(methods(f))
    arguments = method_argnames(last(ms))
end
end
