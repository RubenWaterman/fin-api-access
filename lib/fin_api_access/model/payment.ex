# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.Payment do
  @moduledoc """
  Container for a payment&#39;s data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"accountId",
    :"iban",
    :"type",
    :"amount",
    :"orderCount",
    :"status",
    :"bankMessage",
    :"requestDate",
    :"executionDate"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"accountId" => integer(),
    :"iban" => String.t,
    :"type" => String.t,
    :"amount" => float(),
    :"orderCount" => integer(),
    :"status" => String.t,
    :"bankMessage" => String.t,
    :"requestDate" => String.t,
    :"executionDate" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.Payment do
  def decode(value, _options) do
    value
  end
end
