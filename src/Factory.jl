function _build(modeltype::Type{T}, data::NamedTuple) where T <: AbstractUtilityFunctionType
    
    # build an empty model
    model = modeltype();

    # if we have options, add them to the contract model -
    if (isempty(data) == false)
        for key ∈ fieldnames(modeltype)
            
            # check the for the key - if we have it, then grab this value
            value = nothing
            if (haskey(data, key) == true)
                # get the value -
                value = data[key]
            end

            # set -
            setproperty!(model, key, value)
        end
    end
 
    # return -
    return model
end

# functions -
build(model::Type{VLLinearUtilityFunction}, data::NamedTuple)::VLLinearUtilityFunction = _build(model, data)
build(model::Type{VLCobbDouglasUtilityFunction}, data::NamedTuple)::VLCobbDouglasUtilityFunction = _build(model, data)
build(model::Type{VLLeontiefUtilityFunction}, data::NamedTuple)::VLLeontiefUtilityFunction = _build(model, data)