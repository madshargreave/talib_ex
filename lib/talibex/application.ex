defmodule Talibex.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [
      Talibex.Worker
    ]

    opts = [strategy: :one_for_one, name: Talibex.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
