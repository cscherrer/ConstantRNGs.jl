module ConstantRNGs

using Random

export ConstantRNG
struct ConstantRNG <: AbstractRNG end

Base.rand(::ConstantRNG, ::Type{Bool}) = true

Base.rand(::ConstantRNG) = one(Float64) / 2
Random.randn(::ConstantRNG) = zero(Float64)
Random.randexp(::ConstantRNG) = one(Float64)

Base.rand(::ConstantRNG, ::Type{T}) where {T} = one(T) / 2
Random.randn(::ConstantRNG, ::Type{T}) where {T} = zero(T)
Random.randexp(::ConstantRNG, ::Type{T}) where {T} = one(T)

# We need concrete type parameters to avoid amiguity for these cases
for T in [Float16, Float32, Float64]
    @eval begin
        Base.rand(::ConstantRNG, ::Type{$T}) = one($T) / 2
        Random.randn(::ConstantRNG, ::Type{$T}) = zero($T)
        Random.randexp(::ConstantRNG, ::Type{$T}) = one($T)
    end
end

end
