# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.IbanRuleIdentifiersParams do
  @moduledoc """
  IBAN Rule Identifier params
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ids"
  ]

  @type t :: %__MODULE__{
    :"ids" => [integer()]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.IbanRuleIdentifiersParams do
  def decode(value, _options) do
    value
  end
end

