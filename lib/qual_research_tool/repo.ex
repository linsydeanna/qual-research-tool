defmodule QualResearchTool.Repo do
  use Ecto.Repo,
    otp_app: :qual_research_tool,
    adapter: Ecto.Adapters.Postgres
end
