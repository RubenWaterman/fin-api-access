# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.Category do
  @moduledoc """
  Category data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"parentId",
    :"parentName",
    :"isCustom",
    :"children"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"name" => String.t,
    :"parentId" => integer() | nil,
    :"parentName" => String.t | nil,
    :"isCustom" => boolean(),
    :"children" => [integer()] | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.Category do
  def decode(value, _options) do
    value
  end
end

