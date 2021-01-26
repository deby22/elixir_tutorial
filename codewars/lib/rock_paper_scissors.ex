defmodule RockPaperScissors do
  def rps(p1, p2) when p1 == p2, do: "Draw!"
  def rps(p1, p2) when p1 == "paper" and p2 == "rock", do: "Player 1 won!"
  def rps(p1, p2) when p1 == "rock" and p2 == "scissors", do: "Player 1 won!"
  def rps(p1, p2) when p1 == "scissors" and p2 == "paper", do: "Player 1 won!"
  def rps(_, _), do: "Player 2 won!"
end
