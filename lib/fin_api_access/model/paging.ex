# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.Paging do
  @moduledoc """
  Container for pagination information
  """

  @derive [Poison.Encoder]
  defstruct [
    :"page",
    :"perPage",
    :"pageCount",
    :"totalCount"
  ]

  @type t :: %__MODULE__{
    :"page" => integer(),
    :"perPage" => integer(),
    :"pageCount" => integer(),
    :"totalCount" => integer()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.Paging do
  def decode(value, _options) do
    value
  end
end

