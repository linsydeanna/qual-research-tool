defmodule QualResearchToolWeb.InterviewController do
  use QualResearchToolWeb, :controller
  # alias QualResearchTool.Interview

  def index(conn, _params) do
    # data = Interview.list_interviews()

    conn
    |> put_resp_header("Content-Type", "application/json")
    |> send_resp(200, "{}")
  end
end
