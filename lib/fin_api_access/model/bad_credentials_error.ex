# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BadCredentialsError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"error",
    :"error_description"
  ]

  @type t :: %__MODULE__{
    :"error" => String.t,
    :"error_description" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BadCredentialsError do
  def decode(value, _options) do
    value
  end
end

