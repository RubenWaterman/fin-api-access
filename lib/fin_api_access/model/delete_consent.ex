# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.DeleteConsent do
  @moduledoc """
  Container for a result of the consent deleting
  """

  @derive [Poison.Encoder]
  defstruct [
    :"local",
    :"remote"
  ]

  @type t :: %__MODULE__{
    :"local" => String.t,
    :"remote" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.DeleteConsent do
  def decode(value, _options) do
    value
  end
end

