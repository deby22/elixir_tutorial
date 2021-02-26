defmodule ScreenLocking do
  def count_patterns_from(first, len) do
    count_patterns_from(graph(), first, len)
  end

  def count_patterns_from(_, _, len) when len < 2, do: len
  def count_patterns_from(_, _, len) when len > 9, do: 0

  def count_patterns_from(graph, current, 2) do
    Map.get(graph, current, []) |> Enum.count()
  end

  def count_patterns_from(graph, current, len) do
    nodes = Map.get(graph, current, [])
    graph = remove_node(graph, current)
    IO.inspect({current, nodes}, label: "after")
    Enum.map(nodes, fn x -> count_patterns_from(graph, x, len - 1) end) |> Enum.sum()
  end

  def graph do
    %{
      "A" => ~W"B D E F H",
      "B" => ~W"A C D E F G I",
      "C" => ~W"B D E F H",
      "D" => ~W"A B C E G H I",
      "E" => ~W"A B C D F G H I",
      "F" => ~W"A B C E G H I",
      "G" => ~W"B D E F H",
      "H" => ~W"A C D E F G I",
      "I" => ~W"B D E F H"
    }
  end

  def remove_node(graph, node) do
    graph
    |> remove_node(node, Map.get(graph, node, []))
    |> merge_nodes_by_delete_separating(node)
  end

  def merge_nodes_by_delete_separating(graph, removing_node) do
    case removing_node do
      "B" ->
        merge_nodes(graph, "A", "C")

      "H" ->
        merge_nodes(graph, "G", "I")

      "D" ->
        merge_nodes(graph, "A", "G")

      "F" ->
        merge_nodes(graph, "C", "I")

      "E" ->
        graph
        |> merge_nodes("C", "G")
        |> merge_nodes("A", "I")
        |> merge_nodes("B", "H")
        |> merge_nodes("D", "F")

      _ ->
        graph
    end
  end

  defp remove_node(graph, node, []), do: Map.delete(graph, node)

  defp remove_node(graph, node, [head | tail]) do
    graph = remove_node(graph, node, tail)
    remove_from_node(graph, head, node)
  end

  defp remove_from_node(graph, source_node, node_to_remove) do
    node_value = Map.get(graph, source_node, [])
    Map.put(graph, source_node, List.delete(node_value, node_to_remove))
  end

  defp merge_nodes(graph, source_node, target_node) do
    source = Map.get(graph, source_node, [])
    target = Map.get(graph, target_node, [])

    if source != [] and target != [] do
      graph
      |> Map.put(source_node, [target_node | source])
      |> Map.put(target_node, [source_node | target])
    else
      graph
    end
  end
end
