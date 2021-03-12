# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.EditCategoryParams do
  @moduledoc """
  Container for category edit params
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.EditCategoryParams do
  def decode(value, _options) do
    value
  end
end
