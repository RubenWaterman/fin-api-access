# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Api.Payments do
  @moduledoc """
  API calls for all endpoints tagged `Payments`.
  """

  alias FinAPIAccess.Connection
  import FinAPIAccess.RequestBuilder


  @doc """
  Create direct debit
  To use this service payments must be enabled by our customer support for your client.&lt;br/&gt;&lt;br/&gt;Create a payment for a single or collective direct debit order.&lt;br/&gt;Note that this service only creates a payment resource in finAPI and there is no bank communication involved.&lt;br/&gt;To submit the direct debit to the bank, please call the submitPayment service afterwards.&lt;br/&gt;Existing direct debits can be retrieved by the getPayments service.&lt;br/&gt;&lt;br/&gt;A collective direct debit contains more than one order in the &#39;directDebits&#39; list. It is specially handled by the bank and can be booked by the bank either as a single booking for each order or as a single cumulative booking. The preferred booking type can be given with the &#39;singleBooking&#39; flag, but it is not guaranteed each bank will regard this flag.&lt;br/&gt;&lt;br/&gt;Note: Prior creation of the payment resource is also necessary if you are using finAPI&#39;s web form flow.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - body (CreateDirectDebitParams): Create direct debit parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Payment{}} on success
  {:error, info} on failure
  """
  @spec create_direct_debit(Tesla.Env.client, FinAPIAccess.Model.CreateDirectDebitParams.t, keyword()) :: {:ok, FinAPIAccess.Model.Payment.t} | {:error, Tesla.Env.t}
  def create_direct_debit(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/payments/directDebits")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Payment{})
  end

  @doc """
  Create money transfer
  To use this service payments must be enabled by our customer support for your client.&lt;br/&gt;&lt;br/&gt;Create a payment for a single or collective money transfer order.&lt;br/&gt;Note that this service only creates a payment resource in finAPI and there is no bank communication involved.&lt;br/&gt;To submit the money transfer to the bank, call the &#39;Submit payment&#39; service.&lt;br/&gt;&lt;br/&gt;A collective money transfer contains more than one order in the &#39;moneyTransfers&#39; list. It is specially handled by the bank and can be booked by the bank either as one booking for each order, or as a single cumulative booking. The preferred booking type can be given with the &#39;singleBooking&#39; flag, but it is not guaranteed that every bank will regard this flag.&lt;br/&gt;&lt;br/&gt;Note: Creation of a payment resource before using the &#39;Submit payment&#39; service is also necessary if you are using finAPI&#39;s web form flow.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - body (CreateMoneyTransferParams): Create money transfer parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Payment{}} on success
  {:error, info} on failure
  """
  @spec create_money_transfer(Tesla.Env.client, FinAPIAccess.Model.CreateMoneyTransferParams.t, keyword()) :: {:ok, FinAPIAccess.Model.Payment.t} | {:error, Tesla.Env.t}
  def create_money_transfer(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/payments/moneyTransfers")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Payment{})
  end

  @doc """
  Get payments
  Get payments of the user that is authorized by the access_token. Must pass the user&#39;s access_token.&lt;br/&gt;&lt;br/&gt;You can set optional search criteria to get only those payments returned you are interested in.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :ids ([integer()]): A comma-separated list of payment identifiers. If specified, then only payments whose identifier is matching any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
    - :account_ids ([integer()]): A comma-separated list of account identifiers. If specified, then only payments that relate to the given account(s) will be regarded. The maximum number of identifiers is 1000.
    - :min_amount (float()): If specified, then only those payments are regarded whose (absolute) total amount is equal or greater than the given amount will be regarded. The value must be a positive (absolute) amount.
    - :max_amount (float()): If specified, then only those payments are regarded whose (absolute) total amount is equal or less than the given amount will be regarded. Value must be a positive (absolute) amount.
    - :status ([String.t]): A comma-separated list of payment statuses. If provided, then only payments whose status is matching any of the given statuses will be returned. Allowed values &#39;OPEN&#39;, &#39;PENDING&#39;, &#39;SUCCESSFUL&#39;, &#39;NOT_SUCCESSFUL&#39; or &#39;DISCARDED&#39;. Example: &#39;OPEN,PENDING&#39;.
    - :page (integer()): Result page that you want to retrieve
    - :per_page (integer()): Maximum number of records per page. By default it&#39;s 20. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
    - :order ([String.t]): Determines the order of the results. You can use the following fields for ordering the response: &#39;id&#39;, &#39;amount&#39;, &#39;requestDate&#39; and &#39;executionDate&#39;. The default order for all services is &#39;id,asc&#39;.

  ## Returns

  {:ok, %FinAPIAccess.Model.PageablePaymentResources{}} on success
  {:error, info} on failure
  """
  @spec get_payments(Tesla.Env.client, keyword()) :: {:ok, FinAPIAccess.Model.PageablePaymentResources.t} | {:error, Tesla.Env.t}
  def get_payments(connection, opts \\ []) do
    optional_params = %{
      :"ids" => :query,
      :"accountIds" => :query,
      :"minAmount" => :query,
      :"maxAmount" => :query,
      :"status" => :query,
      :"page" => :query,
      :"perPage" => :query,
      :"order" => :query
    }
    %{}
    |> method(:get)
    |> url("/api/v1/payments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.PageablePaymentResources{})
  end

  @doc """
  Submit payment
  To use this service payments must be enabled by our customer support for your client.&lt;br/&gt;&lt;br/&gt;Submit a payment to the bank which was previously created with either the createMoneyTransfer or createDirectDebit service.&lt;br/&gt;&lt;br/&gt;Before you submit the payment, please check that the given bank interface supports the required payment capabilities, otherwise the payment could get rejected.&lt;br/&gt;If the account has been imported via finAPI, then you could check the capabilities on the account level. Please refer to the field AccountInterface.capabilities.&lt;br/&gt;In case the payment is initiated from a given IBAN, please refer to the field BankInterface.isMoneyTransferSupported.&lt;br/&gt;&lt;br/&gt;Usually banks require a multi-step authentication to authorize the payment. In this case, and if the finAPI web form flow is not used, the service will respond with HTTP code 510 and an error object containing a multiStepAuthentication object which describes the necessary next authentication steps. You must then retry the service call, passing the same arguments plus an additional &#39;multiStepAuthentication&#39; element.&lt;br/&gt;Please refer to the description of the HTTP 510 error code below and the documentation of the &#39;MultiStepAuthenticationCallback&#39; response object for details.&lt;br/&gt;&lt;br/&gt;NOTE: Depending on your license, this service may respond with HTTP code 451, containing an error message with a identifier of web form in it. In addition to that the response will also have included a &#39;Location&#39; header, which contains the URL to the web form. In this case, you must forward your user to finAPI&#39;s web form. For a detailed explanation of the Web Form Flow, please refer to this article: &lt;a href&#x3D;&#39;https://finapi.zendesk.com/hc/en-us/articles/360002596391&#39; target&#x3D;&#39;_blank&#39;&gt;finAPI&#39;s Web Form Flow&lt;/a&gt;&lt;br/&gt;&lt;br/&gt;NOTE: For XS2A interface additional headers must be included in the request if the end user is involved. Please refer to the &#39;General Information/User metadata&#39; section of the swagger documentation.&lt;br/&gt;&lt;br/&gt;

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - body (SubmitPaymentParams): Parameters for payment submission
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Payment{}} on success
  {:error, info} on failure
  """
  @spec submit_payment(Tesla.Env.client, FinAPIAccess.Model.SubmitPaymentParams.t, keyword()) :: {:ok, FinAPIAccess.Model.Payment.t} | {:error, Tesla.Env.t}
  def submit_payment(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/payments/submit")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Payment{})
  end
end
