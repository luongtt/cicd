defmodule CICD.MixProject do
  use Mix.Project

  def project do
    [
      app: :cicd,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {CICD, []},
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:logger_lager_backend, git: "https://github.com/Subhuti20/logger_lager_backend.git", branch: "master"},
      {:jason, "~> 1.4"},
      {:gpb, "~> 4.19"},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:elixir_uuid, "~> 1.2"},
      {:enum_type, "~> 1.1.0"}
    ]
  end
end
