defmodule Templates.Mixfile do
  use Mix.Project

  def project do
    [
       app:         :templates,
       version:     "0.0.6",
       elixir:      "~> 1.5",
       name:        "Templates",
       deps:        deps(),
       package:     package(),
       description: description(),
       docs:        [
        readme: "README.md",
        main:   "README"
      ],
      test_coverage: [tool: ExCoveralls]
     ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Templates, [] }
    ]
  end

  defp deps do
    [
      { :calliope,    ">= 0.3.0" },
      { :ex_doc,      ">= 0.7.2",  only: :docs },
      { :earmark,     ">= 0.1.15", only: :docs },
      { :excoveralls, ">= 0.3.10", only: :test }
    ]
  end

  defp description do
    """
    A helper library for adding templating to web applications
    """
  end

  defp package do
    %{
      contributors: ["Shane Logsdon"],
      licenses:     ["MIT"],
      links:       %{
        "GitHub" => "https://github.com/sugar-framework/templates",
        "Docs"   => "http://sugar-framework.github.io/docs/api/templates/"
      }
    }
  end
end
