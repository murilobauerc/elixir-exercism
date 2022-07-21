defmodule GigaSecond do
  @doc """
  Calculate a date one billion seconds after an input date.
  """
  @spec from({{pos_integer, pos_integer, pos_integer}, {pos_integer, pos_integer, pos_integer}}) ::
          {{pos_integer, pos_integer, pos_integer}, {pos_integer, pos_integer, pos_integer}}
  def from(datetime) do
      NaiveDateTime.from_erl!(datetime)
      |> NaiveDateTime.add(Integer.pow(10, 9))
      |> NaiveDateTime.to_erl
  end
end
