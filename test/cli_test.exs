defmodule IssuesCLI do
  use ExUnit.Case
  import Issues.CLI, only: [ parse_args: 1,
                             sort_into_ascending_order: 1 ]

  test "sort ascending order the correct way" do
    result = sort_into_ascending_order(fake_created_at_list(["c", "a", "b"]))
    issues = for issue <- result, do: issue["created_at"]
    assert issues == ~w{a b c}
  end

  defp fake_created_at_list(values) do
    values |> Enum.map(fn value -> %{"created_at" => value, "other_data" => "xxx"} end)
  end
end
