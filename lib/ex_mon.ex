defmodule ExMon do
 alias ExMon.Trainer

 @spec create_trainer(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) ::
         any
 defdelegate create_trainer(params), to: Trainer.Create, as: :call
 defdelegate delete_trainer(params), to: Trainer.Delete, as: :call
 defdelegate get_trainer(params), to: Trainer.Get, as: :call
end
