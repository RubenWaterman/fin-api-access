# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.CheckCategorizationData do
  @moduledoc """
  Transactions data for categorization check
  """

  @derive [Poison.Encoder]
  defstruct [
    :"transactionData"
  ]

  @type t :: %__MODULE__{
    :"transactionData" => [CheckCategorizationTransactionData]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.CheckCategorizationData do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"transactionData", :list, FinAPIAccess.Model.CheckCategorizationTransactionData, options)
  end
end

