defmodule SumList do
  def call(list), do: sum(0, list)

  def call_enum([head | tail] = list) do
    Enum.map(list, fn elem -> elem + 2 end)
    |> Enum.any?(fn elem -> elem > 5 end)
  end

  defp sum(acc, []) do
    acc
  end

  defp sum(acc, [head | tail]) do
    acc =
      (acc + head)
      |> sum(tail)
  end
end
