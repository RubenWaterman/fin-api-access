# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.KeywordRuleIdentifiersParams do
  @moduledoc """
  Identifiers params
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ids"
  ]

  @type t :: %__MODULE__{
    :"ids" => [integer()]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.KeywordRuleIdentifiersParams do
  def decode(value, _options) do
    value
  end
end
