# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.ExecutePasswordChangeParams do
  @moduledoc """
  Execute password change parameters
  """

  @derive [Poison.Encoder]
  defstruct [
    :"userId",
    :"password",
    :"passwordChangeToken"
  ]

  @type t :: %__MODULE__{
    :"userId" => String.t,
    :"password" => String.t,
    :"passwordChangeToken" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.ExecutePasswordChangeParams do
  def decode(value, _options) do
    value
  end
end

