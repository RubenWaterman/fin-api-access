# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.SubTransactionParams do
  @moduledoc """
  Data of a sub-transaction
  """

  @derive [Poison.Encoder]
  defstruct [
    :"amount",
    :"categoryId",
    :"purpose",
    :"counterpart",
    :"counterpartAccountNumber",
    :"counterpartIban",
    :"counterpartBic",
    :"counterpartBlz",
    :"labelIds"
  ]

  @type t :: %__MODULE__{
    :"amount" => float(),
    :"categoryId" => integer() | nil,
    :"purpose" => String.t | nil,
    :"counterpart" => String.t | nil,
    :"counterpartAccountNumber" => String.t | nil,
    :"counterpartIban" => String.t | nil,
    :"counterpartBic" => String.t | nil,
    :"counterpartBlz" => String.t | nil,
    :"labelIds" => [integer()] | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.SubTransactionParams do
  def decode(value, _options) do
    value
  end
end

