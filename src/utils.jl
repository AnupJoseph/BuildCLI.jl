
function method_argnames(m::Method)
    argnames = ccall(:jl_uncompress_argnames, Vector{Symbol}, (Any,), m.slot_syms)
    types = m.sig.types[2:end]
    isempty(argnames) && return argnames
    return Dict(zip(argnames[1:m.nargs][2:end], types))
end