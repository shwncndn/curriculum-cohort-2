defmodule Stack.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Stack, []}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
