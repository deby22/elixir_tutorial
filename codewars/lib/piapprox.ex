defmodule Piapprox do
  # to get 10 decimals you can use:
  # num ---> (trunc num * :math.pow(10, 10)) / :math.pow(10, 10)

  def iter_pi(epsilon), do: iter_pi(epsilon, 0, 0)

  def iter_pi(epsilon, partial_sum, index) do
    if abs(:math.pi() - partial_sum * 4) > epsilon do
      iter_pi(epsilon, partial_sum + reduced_value(index), index + 1)
    else
      [index, Float.floor(partial_sum * 4, 10)]
    end
  end

  defp reduced_value(index) do
    value = 1 + 2 * index
    if rem(index, 2) == 0, do: 1 / value, else: -1 / value
  end
end
