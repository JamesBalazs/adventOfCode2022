{:ok, contents} = File.read("day01Input.txt")
contents |> String.split("\n\n", trim: true)
|> Enum.map(fn(x) ->
  String.split(x, "\n", trim: true)
  |> Enum.map(&String.to_integer/1)
  |> Enum.sum
end)
|> Enum.max
|> IO.inspect # 65912