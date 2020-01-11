defmodule SerumSite.MixFile do
  use Mix.Project

  def project do
    [
      app: :serum_site,
      version: "1.0.0",
      elixir: ">= 1.7.0",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:serum, "~> 1.4"},
      {:serum_theme_essence, "~> 1.0"}
    ]
  end
end
