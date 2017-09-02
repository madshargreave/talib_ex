defmodule Talibex.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :talibex,
      version: @version,
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package()
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
      {:erlport, "~> 0.9.8"}
    ]
  end

  defp package do
    [
      description: "A thin Elixir wrapper around Ta-Lib",
      licenses: ["MIT License"],
      maintainers: ["Mads Hargreave"],
      links: %{
        github: "https://github.com/madshargreave/talibex",
        docs: "http://hexdocs.pm/talibex/#{@version}/"
      }
    ]
  end

end
