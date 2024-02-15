module parsing
using DelimitedFiles

function read_rdf_vector(filename::AbstractString)
    data = Float32[]

    open(filename) do file
        for line in eachline(file)
            if !startswith(line, "#")
                row = parse(Float32, split(line)[2])
                push!(data, row)
            end
        end
    end

    return data
end

end # module parsing
