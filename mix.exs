defmodule PlugDemo.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_demo,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
      [
        applications: [:logger, :plug_cowboy, :plug],
        mod: {PlugDemo.Application, []}
      ]
  end

  defp deps do
    [
        {:plug_cowboy, "~> 1.0"},
        {:plug, "~> 1.11.0"},
    ]
  end
end
