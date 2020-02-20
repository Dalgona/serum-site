defmodule SerumSite.ReadTime do
  @behaviour Serum.Plugin

  @words_per_minute 200.0

  @impl true
  def name, do: "Estimated Read Time"

  @impl true
  def version, do: "0.1.0"

  @impl true
  def elixir, do: ">= 1.7.0"

  @impl true
  def serum, do: ">= 1.2.0"

  @impl true
  def description do
    "Calculates the estimated read time for each page or blog post."
  end

  @impl true
  def implements do
    [
      processed_pages: 2,
      processed_posts: 2
    ]
  end

  @impl true
  def processed_pages(pages, _args) do
    new_pages =
      Enum.map(pages, fn %{data: html, extras: extras} = page ->
        %{page | extras: Map.put(extras, "read_time", read_time(html))}
      end)

    {:ok, new_pages}
  end

  @impl true
  def processed_posts(posts, _args) do
    new_posts =
      Enum.map(posts, fn %{html: html, extras: extras} = post ->
        %{post | extras: Map.put(extras, "read_time", read_time(html))}
      end)

    {:ok, new_posts}
  end

  defp read_time(html) do
    html
    |> word_count()
    |> Kernel./(@words_per_minute)
    |> :math.ceil()
    |> trunc()
  end

  defp word_count(html) do
    html
    |> Floki.parse_document!()
    |> Floki.text(sep: " ")
    |> String.split(~r/\s+/, trim: true)
    |> length
  end
end
