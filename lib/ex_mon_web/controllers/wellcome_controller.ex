defmodule ExMonWeb.WellcomeController do
  use ExMonWeb, :controller

  def index(conn,_params) do
    text(conn, "Wellcome to ExMon Api")
  end
end
