# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.KeywordRulesParams do
  @moduledoc """
  Params for creation of keyword rules
  """

  @derive [Poison.Encoder]
  defstruct [
    :"keywordRules"
  ]

  @type t :: %__MODULE__{
    :"keywordRules" => [KeywordRuleParams]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.KeywordRulesParams do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"keywordRules", :list, FinAPIAccess.Model.KeywordRuleParams, options)
  end
end

