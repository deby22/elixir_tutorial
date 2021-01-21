# TaskList
# Exercise about data structure
# Based on: https://youtu.be/CyUWWYKFe60

defmodule Fraction do
    # one struct by one module - important
    defstruct x: nil, y: nil

    def new(x, y) do
        %Fraction{x: x, y: y}
    end

    def value(%Fraction{x: x, y: y}) do
        x / y
    end

    # 1/2 + 1/4 = [(1 * 4) + (1 * 2)] / (2 * 4) = 6 / 8 = 3 / 4 = 0.75
    def add(%Fraction{x: x1, y: y1}, %Fraction{x: x2, y: y2}) do
        new(
            x1 * y2 + x2 * y1,
            y1 * y2
        )
    end
end

defmodule Main do
    def main do
        # create fraction 
        fraction = %Fraction{x: 1, y: 2}
        IO.inspect fraction
        
        # create fraction by new method
        fraction = Fraction.new(1, 2)
        IO.inspect fraction

        # value of two added fraction
        value_of_fraction = Fraction.add(Fraction.new(1, 2), Fraction.new(1, 4)) |> Fraction.value()
        IO.inspect value_of_fraction
        :ok

        # few important things

        # There is no way to call Enum on struct
        # this works
        map_fraction = %{x: 1, y: 2}
        map_fraction |> Enum.to_list()
        # won't work
        # fraction |> Enum.to_list()
        # instead use
        fraction |> Map.to_list()
   
        # Pattern Match struct -> map - works
        %{x: x, y: y} = %Fraction{x: 1, y: 2}
        # Pattern Match map -> struct doesnt work
        # %Fraction{x: x, y: y} = %{x: 1, y: 2}
        
    end
end