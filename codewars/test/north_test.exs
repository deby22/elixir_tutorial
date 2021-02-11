defmodule DirectionsTest do
  use ExUnit.Case

  test "#reduce 1" do
    directions = ~w[NORTH WEST SOUTH EAST]
    message = "#{directions} cannot be reduced further"
    assert Directions.reduce(directions) == directions, message
  end

  test "#reduce 2" do
    directions = ~w[NORTH SOUTH SOUTH EAST WEST NORTH WEST]
    reduced_directions = ~w[WEST]

    message =
      Enum.join(directions, " ") <>
        " can be reduced to " <>
        Enum.join(reduced_directions, " ")

    assert Directions.reduce(directions) == reduced_directions, message
  end

  test "#reduce 3" do
    directions = ~w[NORTH SOUTH SOUTH EAST WEST NORTH WEST WEST]
    reduced_directions = ~w[WEST WEST]

    message =
      Enum.join(directions, " ") <>
        " can be reduced to " <>
        Enum.join(reduced_directions, " ")

    assert Directions.reduce(directions) == reduced_directions, message
  end

  test "#reduce randomed" do
    directions =
      ~w[SOUTH SOUTH NORTH WEST EAST EAST WEST EAST NORTH NORTH EAST WEST EAST EAST SOUTH WEST EAST NORTH EAST SOUTH EAST EAST NORTH SOUTH WEST NORTH NORTH SOUTH WEST WEST]

    reduced_directions = ~w[SOUTH EAST NORTH NORTH EAST EAST EAST SOUTH EAST NORTH WEST WEST]

    message =
      Enum.join(directions, " ") <>
        " can be reduced to " <>
        Enum.join(reduced_directions, " ")

    assert Directions.reduce(directions) == reduced_directions, message
  end
end
