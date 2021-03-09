defmodule ListFilter do
  require Integer

  def call(list) do
    filtered_list =
      Enum.map(list, fn el ->
        case Integer.parse(el) do
          :error -> 0
          {n, ""} -> n
        end
      end)

    filtered_list = Enum.filter(filtered_list, fn el -> Integer.is_odd(el) end)

    Enum.reduce(filtered_list, fn _el, acc -> acc + 1 end)
  end
end
