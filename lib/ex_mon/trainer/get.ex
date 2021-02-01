defmodule ExMon.Trainer.Get do
  alias ExMon.{Repo, Trainer}
  alias Ecto.UUID

  @spec call(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) :: any
  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID format!"}
      {:ok, uuid} -> get(uuid)
    end
  end

  defp get(uuid) do
    case fetch_trainer(uuid) do
      nil -> {:error, "Trainer not found!"}
      trainer -> trainer
    end
  end

  defp fetch_trainer(uuid), do: Repo.get(Trainer,uuid)

end
