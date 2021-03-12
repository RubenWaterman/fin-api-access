# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.IdentifierList do
  @moduledoc """
  Set of identifiers (in ascending order)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"identifiers"
  ]

  @type t :: %__MODULE__{
    :"identifiers" => [integer()]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.IdentifierList do
  def decode(value, _options) do
    value
  end
end

