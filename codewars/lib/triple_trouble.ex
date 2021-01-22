defmodule Codewars.WeirdString do
  def triple_trouble(one, two, three) do
    one = String.codepoints(one)
    two = String.codepoints(two)
    three = String.codepoints(three)
    cross(one, two, three)
  end

  def cross([], [], []), do: ""
  def cross([h1 | t1], [h2 | t2], [h3 | t3]), do: "#{h1}#{h2}#{h3}#{cross(t1, t2, t3)}"
end
