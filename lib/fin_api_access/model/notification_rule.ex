# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.NotificationRule do
  @moduledoc """
  Data of notification rule
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"triggerEvent",
    :"params",
    :"callbackHandle",
    :"includeDetails"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"triggerEvent" => String.t,
    :"params" => %{optional(String.t) => String.t},
    :"callbackHandle" => String.t,
    :"includeDetails" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.NotificationRule do
  def decode(value, _options) do
    value
  end
end

