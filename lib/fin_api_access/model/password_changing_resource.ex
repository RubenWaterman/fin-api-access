# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.PasswordChangingResource do
  @moduledoc """
  Password changing details
  """

  @derive [Poison.Encoder]
  defstruct [
    :"userId",
    :"userEmail",
    :"passwordChangeToken"
  ]

  @type t :: %__MODULE__{
    :"userId" => String.t,
    :"userEmail" => String.t | nil,
    :"passwordChangeToken" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.PasswordChangingResource do
  def decode(value, _options) do
    value
  end
end

