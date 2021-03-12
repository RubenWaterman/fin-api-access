# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.TrainCategorizationTransactionData do
  @moduledoc """
  Transaction data for categorization training
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accountTypeId",
    :"amount",
    :"purpose",
    :"counterpart",
    :"counterpartIban",
    :"counterpartAccountNumber",
    :"counterpartBlz",
    :"counterpartBic",
    :"mcCode"
  ]

  @type t :: %__MODULE__{
    :"accountTypeId" => integer(),
    :"amount" => float(),
    :"purpose" => String.t,
    :"counterpart" => String.t,
    :"counterpartIban" => String.t,
    :"counterpartAccountNumber" => String.t,
    :"counterpartBlz" => String.t,
    :"counterpartBic" => String.t,
    :"mcCode" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.TrainCategorizationTransactionData do
  def decode(value, _options) do
    value
  end
end
