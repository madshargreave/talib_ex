defmodule Talibex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :talibex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Talibex.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:erlport, git: "https://github.com/hdima/erlport.git"}
    ]
  end
end
