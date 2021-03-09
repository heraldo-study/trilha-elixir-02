defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "Should get the correct count of the even numbers insider the list as string" do
    assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    assert ListFilter.call(["1", "3", "6", "abc"]) == 2
    assert ListFilter.call(["1", "3", "6", "7", "13", "asd2", "abc"]) == 4
  end
end
