defmodule SerumSite.MixFile do
  use Mix.Project

  def project do
    [
      app: :serum_site,
      version: "0.9.0",
      elixir: "~> 1.6",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:serum, "~> 0.9.0"}
    ]
  end
end
