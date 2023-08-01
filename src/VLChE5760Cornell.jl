module VLChE5760Cornell

    # load the include file -
    include("Include.jl");

    # exports -
    export hello;
    
    # types -
    export VLLinearUtilityFunction, VLCobbDouglasUtilityFunction, VLLeontiefUtilityFunction, AbstractUtilityFunctionType;

    # methods -
    export evaluate, indifference, build;


end
