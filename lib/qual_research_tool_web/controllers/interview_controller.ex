defmodule QualResearchToolWeb.InterviewController do
  use QualResearchToolWeb, :controller
  alias QualResearchTool.Interview

  def index(conn, _params) do
    data = Interview.list_interviews()

    conn
    |> put_resp_header("Content-Type", "application/json")
    |> send_resp(200, Jason.encode!(data))
  end

  def create(conn, %{"interview" => interview_params}) do
    case Interview.create_interview(interview_params) do
      {:ok, _} ->
        send_resp(conn, 201, Jason.encode!(interview_params))

      {:error, _changeset} ->
        send_resp(conn, 500, "There was an error while creating an interview.")
    end
  end

  def update(conn, %{"interview" => interview_params}) do
    %{"id" => id} = interview_params

    case Interview.update_interview(interview_params) do
      {:ok, _} ->
        send_resp(conn, 200, "The interview with id #{id} has been updated.")

      {:error, _changeset} ->
        send_resp(conn, 500, "There was an error while updating an interview.")
    end
  end

  def delete(conn, %{"interview" => interview_params}) do
    %{"id" => id} = interview_params

    case Interview.delete_interview(interview_params) do
      {:ok, _} ->
        send_resp(conn, 200, "The interview with id #{id} has been deleted.")

      {:error, _changeset} ->
        send_resp(conn, 500, "There was an error while deleting an interview.")
    end
  end
end
