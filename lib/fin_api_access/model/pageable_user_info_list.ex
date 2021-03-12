# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.PageableUserInfoList do
  @moduledoc """
  Container for users information with paging info
  """

  @derive [Poison.Encoder]
  defstruct [
    :"users",
    :"paging"
  ]

  @type t :: %__MODULE__{
    :"users" => [UserInfo],
    :"paging" => Paging
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.PageableUserInfoList do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"users", :list, FinAPIAccess.Model.UserInfo, options)
    |> deserialize(:"paging", :struct, FinAPIAccess.Model.Paging, options)
  end
end

