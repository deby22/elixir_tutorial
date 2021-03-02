defmodule Growth do
  def nb_year(p0, percent, aug, p), do: do_nb_year(0, p0, percent, aug, p)

  def do_nb_year(years, p0, _, _, p) when p0 >= p, do: years

  def do_nb_year(years, p0, percent, aug, p) do
    do_nb_year(
      years + 1,
      trunc(p0 + p0 * (percent / 100)) + aug,
      percent,
      aug,
      p
    )
  end
end
