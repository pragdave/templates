defmodule Sugar.Templates.Engines.CalliopeTest do
  use ExUnit.Case

  test "render/2" do
    template = %Sugar.Templates.Template{
      key: "index.html.haml",
      source: "!!! 5\n%html{lang: \"en-US\"}",
      engine: Sugar.Templates.Engines.Calliope
    }

    assert {:ok, html} = template.engine.render(template, [])

    assert html == "<!DOCTYPE html>\n<html lang=\"en-US\"></html>\n"
  end
end
