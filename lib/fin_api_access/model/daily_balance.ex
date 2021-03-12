# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.DailyBalance do
  @moduledoc """
  Balance data for a single day
  """

  @derive [Poison.Encoder]
  defstruct [
    :"date",
    :"balance",
    :"income",
    :"spending",
    :"transactions"
  ]

  @type t :: %__MODULE__{
    :"date" => String.t,
    :"balance" => float(),
    :"income" => float(),
    :"spending" => float(),
    :"transactions" => [integer()]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.DailyBalance do
  def decode(value, _options) do
    value
  end
end

