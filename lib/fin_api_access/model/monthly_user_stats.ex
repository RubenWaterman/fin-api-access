# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.MonthlyUserStats do
  @moduledoc """
  Information about a user's data or activities for a certain month
  """

  @derive [Poison.Encoder]
  defstruct [
    :"month",
    :"minBankConnectionCount",
    :"maxBankConnectionCount"
  ]

  @type t :: %__MODULE__{
    :"month" => String.t,
    :"minBankConnectionCount" => integer(),
    :"maxBankConnectionCount" => integer()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.MonthlyUserStats do
  def decode(value, _options) do
    value
  end
end

