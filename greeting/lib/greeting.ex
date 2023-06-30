defmodule Greeting do
  @moduledoc """
  Documentation for `Greeting`.
  """

  @doc """
  Runs the main function to print greeting to user.

  ## Examples

      iex> Greeting.main()
      "Good morning!"

  """

  # Original main function

  #   def main(_arg) do
  #     IO.puts("Good morning!")
  #   end
  # end

  # Updated w/

  def main(args) do
    {opts, _word, _errors} = OptionParser.parse(args, switches: [upcase: :string])
    IO.puts(String.upcase("Good #{opts[:time] || "morning"}!"))
  end
end
