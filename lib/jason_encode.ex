alias Movies.Movie.Movies

# lib/jason_encoder.ex
defimpl Jason.Encoder, for: Movies do
    def encode(%{__struct__: _} = struct, options) do
        map = struct
            |> Map.from_struct
            |> sanitize_map
        Jason.Encoder.Map.encode(map, options)
    end

    defp sanitize_map(map) do
        Map.drop(map, [:__meta__, :__struct__])
    end
end
