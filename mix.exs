defmodule Talibex.Mixfile do
  use Mix.Project

  @version "1.1.0"

  def project do
    [
      app: :talib_ex,
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
      {:erlport, "~> 0.9.8"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
    ]
  end

  defp package do
    [
      description: "A thin Elixir wrapper around Ta-Lib",
      licenses: ["MIT License"],
      maintainers: ["Mads Hargreave"],
      links: %{
        github: "https://github.com/madshargreave/talib_ex",
        docs: "http://hexdocs.pm/talib_ex/#{@version}/"
      }
    ]
  end

end
