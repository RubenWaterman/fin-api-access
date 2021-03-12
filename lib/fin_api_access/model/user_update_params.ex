# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.UserUpdateParams do
  @moduledoc """
  User details
  """

  @derive [Poison.Encoder]
  defstruct [
    :"email",
    :"phone",
    :"isAutoUpdateEnabled"
  ]

  @type t :: %__MODULE__{
    :"email" => String.t,
    :"phone" => String.t,
    :"isAutoUpdateEnabled" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.UserUpdateParams do
  def decode(value, _options) do
    value
  end
end
