defmodule FlokiExperiment do
  @moduledoc """
  Documentation for `FlokiExperiment`.
  """

  @path "test.html"
  1

  @doc """
  Hello world.

  ## Examples

      iex> FlokiExperiment.hello()


  """
  def hello do
    File.read!(@path)
    |> Floki.find("td.sticky.bg-white.sticky-border div p")
    |> Enum.map(&elem(&1, 2))
    |> Enum.each(&IO.puts(&1))
  end
end
