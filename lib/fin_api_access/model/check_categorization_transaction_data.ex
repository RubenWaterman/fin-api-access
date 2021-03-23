# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.CheckCategorizationTransactionData do
  @moduledoc """
  Transaction data for categorization check
  """

  @derive [Poison.Encoder]
  defstruct [
    :"transactionId",
    :"accountTypeId",
    :"amount",
    :"purpose",
    :"counterpart",
    :"counterpartIban",
    :"counterpartAccountNumber",
    :"counterpartBlz",
    :"counterpartBic",
    :"mcCode",
    :"typeCodeZka"
  ]

  @type t :: %__MODULE__{
    :"transactionId" => String.t,
    :"accountTypeId" => integer(),
    :"amount" => float(),
    :"purpose" => String.t | nil,
    :"counterpart" => String.t | nil,
    :"counterpartIban" => String.t | nil,
    :"counterpartAccountNumber" => String.t | nil,
    :"counterpartBlz" => String.t | nil,
    :"counterpartBic" => String.t | nil,
    :"mcCode" => String.t | nil,
    :"typeCodeZka" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.CheckCategorizationTransactionData do
  def decode(value, _options) do
    value
  end
end

