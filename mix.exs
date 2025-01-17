defmodule Homework.MixProject do
  use Mix.Project

  def project do
    [
      app: :homework,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :hound]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:hound, "~> 1.0"},
      {:tesla, "~> 1.4"},
      {:hackney, "~> 1.17"},
      {:jason, ">= 1.0.0"}
      # {:phoenix_live_view, "~> 0.17.5"},
      # {:httpoison, "~> 1.4"},
      # {:floki, "~> 0.20.0"},
      # {:html5ever, "~> 0.9.0"},
      #  {:fast_html, "~> 2.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
