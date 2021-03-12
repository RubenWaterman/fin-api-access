# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Api.Transactions do
  @moduledoc """
  API calls for all endpoints tagged `Transactions`.
  """

  alias FinAPIAccess.Connection
  import FinAPIAccess.RequestBuilder


  @doc """
  Delete all transactions
  Delete a set, or the entirety, of transactions of the currently authorized user.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :max_deletion_date (String.t): If specified, then only those transactions are being deleted whose &#39;finapiBookingDate&#39; is equal to or earlier to the given date. The date may not be in future, and must be given in the format &#39;YYYY-MM-DD&#39;. If not specified, then no date limitation will be in place for the deletion.
    - :min_import_date (String.t): If specified, then only those transactions are being deleted whose &#39;importDate&#39; is later than or equal to the given date. The date may not be in future, and must be given in the format &#39;YYYY-MM-DD&#39;. This is useful e.g. if a bank returns incorrect transactions and then fixes that issue. Then you could put the date when the error was first observed as &#39;minImportDate&#39;. This would lead to deletion of all transactions after the issue was introduced and allow finAPI to refetch them from scratch. This only works if safeMode is set to false and &#39;rememberDeletion&#39; is undefined or set to false. You also can not use this parameter alongside &#39;maxDeletionDate&#39;.
    - :account_ids ([integer()]): A comma-separated list of account identifiers. If specified, then only transactions whose account&#39;s identifier is included in this list will be get deleted. The maximum number of identifiers is 1000.
    - :safe_mode (boolean()): When passing &#39;true&#39;, then only those transactions are being deleted where at least one of the following holds true: 1. The transaction belongs to a &#39;demo connection&#39;; 2. The transaction&#39;s &#39;potentialDuplicate&#39; flag is set to TRUE; 3. The transaction is an adjusting entry (&#39;Zwischensaldo&#39; transaction) that was added by finAPI. When passing &#39;false&#39;, then finAPI will delete transactions independent of these characteristics. The default value for this parameter is &#39;true&#39;.
    - :remember_deletion (boolean()): When passing &#39;true&#39;, then finAPI will make sure to not re-import deleted transactions on future account updates. When &#39;false&#39;, then deleted transactions might be re-imported. Default value for this parameter is &#39;false&#39;.

  ## Returns

  {:ok, %FinAPIAccess.Model.IdentifierList{}} on success
  {:error, info} on failure
  """
  @spec delete_all_transactions(Tesla.Env.client, keyword()) :: {:ok, FinAPIAccess.Model.IdentifierList.t} | {:error, Tesla.Env.t}
  def delete_all_transactions(connection, opts \\ []) do
    optional_params = %{
      :"maxDeletionDate" => :query,
      :"minImportDate" => :query,
      :"accountIds" => :query,
      :"safeMode" => :query,
      :"rememberDeletion" => :query
    }
    %{}
    |> method(:delete)
    |> url("/api/v1/transactions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.IdentifierList{})
  end

  @doc """
  Delete a transaction
  Delete a single transaction of the user that is authorized by the access_token.&lt;br/&gt;&lt;br/&gt; A transaction can only get deleted if at least one of the following holds true:&lt;br/&gt; &amp;bull; The transaction belongs to a &#39;demo connection&#39;&lt;br/&gt; &amp;bull; The transaction&#39;s &#39;potentialDuplicate&#39; flag is set to TRUE&lt;br/&gt; &amp;bull; The transaction is an adjusting entry (&#39;Zwischensaldo&#39; transaction) that was added by finAPI&lt;br/&gt;&lt;br/&gt;Note that the &#39;Delete all transactions&#39; service has additional functionality and allows you to delete transactions that you cannot delete with this service.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Identifier of transaction
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_transaction(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_transaction(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/api/v1/transactions/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Edit multiple transactions
  Edit one or multiple transactions. You can edit the following fields: &#39;isNew&#x3D;true|false&#39; and/or &#39;isPotentialDuplicate&#x3D;false&#39; and/or &#39;categoryId&#x3D;&lt;id&gt;&#39; and/or &#39;labelIds&#x3D;[&lt;ids&gt;]&#39;. To clear the category of the given transactions (so that they are no longer categorized), pass the value &#39;0&#39; as the categoryId. To clear the labels of the given transactions, pass an empty array of label identifiers: &#39;[]&#39;. The parameters &#39;categoryId&#39; and &#39;labelIds&#39; are forbidden if &#39;ids&#39; is NOT set (i.e. you cannot update the category or labels for ALL transactions). The result is a list of identifiers of only those transactions that have changed as a result of this service call.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - body (UpdateMultipleTransactionsParams): Update transactions parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.IdentifierList{}} on success
  {:error, info} on failure
  """
  @spec edit_multiple_transactions(Tesla.Env.client, FinAPIAccess.Model.UpdateMultipleTransactionsParams.t, keyword()) :: {:ok, FinAPIAccess.Model.IdentifierList.t} | {:error, Tesla.Env.t}
  def edit_multiple_transactions(connection, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/api/v1/transactions")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.IdentifierList{})
  end

  @doc """
  Edit a transaction
  Change a transaction&#39;s fields. You can change the following fields: &#39;isNew&#x3D;true|false&#39; and/or &#39;isPotentialDuplicate&#x3D;false&#39; and/or &#39;categoryId&#x3D;&lt;id&gt;&#39; and/or &#39;labelIds&#x3D;[&lt;ids&gt;]&#39;. To clear a transaction&#39;s category (so that it is no longer categorized), pass the value &#39;0&#39; as the categoryId. To clear the labels of the given transaction, pass an empty array of label identifiers: &#39;[]&#39;.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Identifier of transaction
  - body (UpdateTransactionsParams): Update transactions parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Transaction{}} on success
  {:error, info} on failure
  """
  @spec edit_transaction(Tesla.Env.client, integer(), FinAPIAccess.Model.UpdateTransactionsParams.t, keyword()) :: {:ok, FinAPIAccess.Model.Transaction.t} | {:error, Tesla.Env.t}
  def edit_transaction(connection, id, body, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/api/v1/transactions/#{id}")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Transaction{})
  end

  @doc """
  Get and search all transactions
  Get transactions of the user that is authorized by the access_token. Must pass the user&#39;s access_token. You can set optional search criteria to get only those transactions that you are interested in. If you do not specify any search criteria, then this service functions as a &#39;get all&#39; service.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - view (String.t): This parameter defines finAPI&#39;s logical view on the transactions when querying them: &#39;bankView&#39; regards only the original transactions as they were received from the bank, without considering how the transactions might have gotten split by the user (see POST /transactions/&lt;id&gt;/split). This means that if a transaction is split into logical sub-transactions, then the service will still regard only the original transaction, and NOT the logical sub-transactions in its processing (though for convenience, the transactions will have the data of their sub-transactions included in the response). &#39;userView&#39; by contrast regards the transactions as they exist for the user. For transactions that have not been split into logical sub-transactions, there is no difference to the \&quot;bankView\&quot;. But for transaction that have been split into logical sub-transactions, the service will ONLY regard these sub-transactions, and not the originally received transaction (though for convenience, the sub-transactions will have the identifier of their original transaction included in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :ids ([integer()]): A comma-separated list of transaction identifiers. If specified, then only transactions whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
    - :search (String.t): If specified, then only those transactions will be contained in the result whose &#39;purpose&#39; or counterpart fields contain the given search string (the matching works case-insensitive). If no transactions contain the search string in any of these fields, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the searched fields in order for a transaction to get included into the result.
    - :counterpart (String.t): If specified, then only those transactions will be contained in the result whose counterpart fields contain the given search string (the matching works case-insensitive). If no transactions contain the search string in any of the counterpart fields, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the searched fields in order for a transaction to get included into the result.
    - :purpose (String.t): If specified, then only those transactions will be contained in the result whose purpose field contains the given search string (the matching works case-insensitive). If no transactions contain the search string in the purpose field, then the result will be an empty list. NOTE: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must be contained in the purpose in order for a transaction to get included into the result.
    - :account_ids ([integer()]): A comma-separated list of account identifiers. If specified, then only transactions that relate to the given accounts will be regarded. If not specified, then all accounts will be regarded.
    - :min_bank_booking_date (String.t): Lower bound for a transaction&#39;s booking date as returned by the bank (&#x3D; original booking date), in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;bankBookingDate&#39; is equal to or later than the given date will be regarded.
    - :max_bank_booking_date (String.t): Upper bound for a transaction&#39;s booking date as returned by the bank (&#x3D; original booking date), in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;bankBookingDate&#39; is equal to or earlier than the given date will be regarded.
    - :min_finapi_booking_date (String.t): Lower bound for a transaction&#39;s booking date as set by finAPI, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). For details about the meaning of the finAPI booking date, please see the field&#39;s documentation in the service&#39;s response.
    - :max_finapi_booking_date (String.t): Upper bound for a transaction&#39;s booking date as set by finAPI, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). For details about the meaning of the finAPI booking date, please see the field&#39;s documentation in the service&#39;s response.
    - :min_amount (float()): If specified, then only transactions whose amount is equal to or greater than the given amount will be regarded. Can contain a positive or negative number with at most two decimal places. Examples: -300.12, or 90.95
    - :max_amount (float()): If specified, then only transactions whose amount is equal to or less than the given amount will be regarded. Can contain a positive or negative number with at most two decimal places. Examples: -300.12, or 90.95
    - :direction (String.t): If specified, then only transactions with the given direction(s) will be regarded. Use &#39;income&#39; for regarding only received payments (amount &gt;&#x3D; 0), &#39;spending&#39; for regarding only outgoing payments (amount &lt; 0), or &#39;all&#39; to regard both directions. If not specified, the direction defaults to &#39;all&#39;.
    - :label_ids ([integer()]): A comma-separated list of label identifiers. If specified, then only transactions that have been marked with at least one of the given labels will be contained in the result.
    - :category_ids ([integer()]): A comma-separated list of category identifiers. If specified, then the result will contain only transactions whose category is either one of the given categories, or - but only if the &#39;includeChildCategories&#39; flag is set to &#39;true&#39; - whose category is a sub-category of one of the given categories. To include transactions without any category, pass the value &#39;0&#39; as the categoryId.
    - :include_child_categories (boolean()): This flag controls how the given &#39;categoryIds&#39; are handled. If set to &#39;true&#39;, then all transactions of a given categoryId, as well as all transactions of any of its sub-categories will be regarded. If set to &#39;false&#39;, then sub-categories of a given categoryId will not be regarded and only those transactions are regarded whose category matches one of the explicitly given categoryIds. The default value for this flag is &#39;true&#39;.
    - :is_new (boolean()): If specified, then only transactions that have their &#39;isNew&#39; flag set to true/false will be regarded.
    - :is_potential_duplicate (boolean()): If specified, then only transactions that have their &#39;isPotentialDuplicate&#39; flag set to true/false will be regarded.
    - :is_adjusting_entry (boolean()): If specified, then only transactions that have their &#39;isAdjustingEntry&#39; flag set to true/false will be regarded.
    - :min_import_date (String.t): Lower bound for a transaction&#39;s import date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;importDate&#39; is equal to or later than the given date will be regarded.
    - :max_import_date (String.t): Upper bound for a transaction&#39;s import date, in the format &#39;YYYY-MM-DD&#39; (e.g. &#39;2016-01-01&#39;). If specified, then only transactions whose &#39;importDate&#39; is equal to or earlier than the given date will be regarded.
    - :page (integer()): Result page that you want to retrieve.
    - :per_page (integer()): Maximum number of records per page. By default it&#39;s 20. Can be at most 500. NOTE: Due to its validation and visualization, the swagger frontend might show very low performance, or even crashes, when a service responds with a lot of data. It is recommended to use a HTTP client like Postman or DHC instead of our swagger frontend for service calls with large page sizes.
    - :order ([String.t]): Determines the order of the results. You can use the following fields for ordering the response: &#39;id&#39;, &#39;parentId&#39;, &#39;accountId&#39;, &#39;valueDate&#39;, &#39;bankBookingDate&#39;, &#39;finapiBookingDate&#39;, &#39;amount&#39;, &#39;purpose&#39;, &#39;counterpartName&#39;, &#39;counterpartAccountNumber&#39;, &#39;counterpartIban&#39;, &#39;counterpartBlz&#39;, &#39;counterpartBic&#39;, &#39;type&#39;, &#39;primanota&#39;, &#39;category.id&#39;, &#39;category.name&#39;, &#39;isPotentialDuplicate&#39;, &#39;isNew&#39; and &#39;importDate&#39;. The default order for all services is &#39;id,asc&#39;. You can also order by multiple properties. In that case the order of the parameters passed is important. Example: &#39;/transactions?order&#x3D;finapiBookingDate,desc&amp;order&#x3D;counterpartName&#39; will return the latest transactions first. If there are more transactions on the same day, then these transactions are ordered by the counterpart name (ascending). The general format is: &#39;property[,asc|desc]&#39;, with &#39;asc&#39; being the default value. Please note that ordering by multiple fields is not supported in our swagger frontend, but you can test this feature with any HTTP tool of your choice (e.g. postman or DHC). 

  ## Returns

  {:ok, %FinAPIAccess.Model.PageableTransactionList{}} on success
  {:error, info} on failure
  """
  @spec get_and_search_all_transactions(Tesla.Env.client, String.t, keyword()) :: {:ok, FinAPIAccess.Model.PageableTransactionList.t} | {:error, Tesla.Env.t}
  def get_and_search_all_transactions(connection, view, opts \\ []) do
    optional_params = %{
      :"ids" => :query,
      :"search" => :query,
      :"counterpart" => :query,
      :"purpose" => :query,
      :"accountIds" => :query,
      :"minBankBookingDate" => :query,
      :"maxBankBookingDate" => :query,
      :"minFinapiBookingDate" => :query,
      :"maxFinapiBookingDate" => :query,
      :"minAmount" => :query,
      :"maxAmount" => :query,
      :"direction" => :query,
      :"labelIds" => :query,
      :"categoryIds" => :query,
      :"includeChildCategories" => :query,
      :"isNew" => :query,
      :"isPotentialDuplicate" => :query,
      :"isAdjustingEntry" => :query,
      :"minImportDate" => :query,
      :"maxImportDate" => :query,
      :"page" => :query,
      :"perPage" => :query,
      :"order" => :query
    }
    %{}
    |> method(:get)
    |> url("/api/v1/transactions")
    |> add_param(:query, :"view", view)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.PageableTransactionList{})
  end

  @doc """
  Get a transaction
  Get a single transaction of the user that is authorized by the access_token. Must pass the transaction&#39;s identifier and the user&#39;s access_token.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Identifier of transaction
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Transaction{}} on success
  {:error, info} on failure
  """
  @spec get_transaction(Tesla.Env.client, integer(), keyword()) :: {:ok, FinAPIAccess.Model.Transaction.t} | {:error, Tesla.Env.t}
  def get_transaction(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/v1/transactions/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Transaction{})
  end

  @doc """
  Restore a transaction
  Restore a previously split transaction. Removes all of its sub-transactions.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Transaction identifier
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Transaction{}} on success
  {:error, info} on failure
  """
  @spec restore_transaction(Tesla.Env.client, integer(), keyword()) :: {:ok, FinAPIAccess.Model.Transaction.t} | {:error, Tesla.Env.t}
  def restore_transaction(connection, id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/transactions/#{id}/restore")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Transaction{})
  end

  @doc """
  Split a transaction
  Split a transaction into several logical sub-transactions. If the given transaction is split already, all its current sub-transactions will get deleted before the new sub-transactions will get created.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Transaction identifier
  - body (SplitTransactionsParams): Split transactions parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %FinAPIAccess.Model.Transaction{}} on success
  {:error, info} on failure
  """
  @spec split_transaction(Tesla.Env.client, integer(), FinAPIAccess.Model.SplitTransactionsParams.t, keyword()) :: {:ok, FinAPIAccess.Model.Transaction.t} | {:error, Tesla.Env.t}
  def split_transaction(connection, id, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/transactions/#{id}/split")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%FinAPIAccess.Model.Transaction{})
  end

  @doc """
  Trigger categorization
  Triggers finAPI&#39;s background categorization process for all uncategorized transactions of the given bank connection(s) (or of all of the user&#39;s bank connections, if no bank connection identifiers are passed). The service returns as soon as the categorizations are scheduled. At this point, the bank connections will have their &#39;categorizationStatus&#39; set to &#39;PENDING&#39;. Use the service \&quot;Get a bank connection\&quot; or \&quot;Get all bank connections\&quot; to check when the categorization has finished (this is the case when the categorizationStatus has switched to &#39;READY&#39;).&lt;br/&gt;&lt;br/&gt;Note that if at least one of the target bank connections is currently locked at the time when you call this service (i.e. the bank connection is currently being updated, or another categorization is already scheduled for it), then no categorization will be triggered at all and the service will respond with HTTP code 422.&lt;br/&gt;&lt;br/&gt;Please also note:&lt;br/&gt;&amp;bull; finAPI&#39;s background categorization process is executed automatically whenever you import or update a bank connection (though in case of update, it will categorize only the new transactions, and not re-run categorization for previously imported transactions). This means that in general you do not have to call this service after an import or update. Use this service only when you wish to re-run the categorization of all existing uncategorized transactions.&lt;br/&gt;&amp;bull; if you wish to just manually assign categories to transactions, please use the service \&quot;Edit a transaction\&quot; or \&quot;Edit multiple transactions\&quot; instead.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - body (TriggerCategorizationParams): Trigger categorization parameters
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec trigger_categorization(Tesla.Env.client, FinAPIAccess.Model.TriggerCategorizationParams.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def trigger_categorization(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/transactions/triggerCategorization")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
