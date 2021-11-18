defmodule LiveMap.MixProject do
  use Mix.Project

  @source_url "https://github.com/sntran/live_map"
  @version File.read!("VERSION") |> String.trim()

  def project do
    [
      app: :live_map,
      version: @version,
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  defp description do
    """
    LiveMap is a Phoenix LiveView component for interactive map with
    dynamic data.
    """
  end

  defp package do
    [
      name: :live_phone,
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE.md",
        "VERSION"
      ],
      maintainers: ["Trần Nguyễn Sơn"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end


  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp docs do
    [
      main: "LiveMap",
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end
end
