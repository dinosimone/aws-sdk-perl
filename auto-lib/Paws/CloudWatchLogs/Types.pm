package Paws::CloudWatchLogs::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type CloudWatchLogs_AssociateKmsKeyRequest, { class => 'Paws::CloudWatchLogs::AssociateKmsKeyRequest' };
  class_type CloudWatchLogs_CancelExportTaskRequest, { class => 'Paws::CloudWatchLogs::CancelExportTaskRequest' };
  class_type CloudWatchLogs_CreateExportTaskRequest, { class => 'Paws::CloudWatchLogs::CreateExportTaskRequest' };
  class_type CloudWatchLogs_CreateExportTaskResponse, { class => 'Paws::CloudWatchLogs::CreateExportTaskResponse' };
  class_type CloudWatchLogs_CreateLogGroupRequest, { class => 'Paws::CloudWatchLogs::CreateLogGroupRequest' };
  class_type CloudWatchLogs_CreateLogStreamRequest, { class => 'Paws::CloudWatchLogs::CreateLogStreamRequest' };
  class_type CloudWatchLogs_DataAlreadyAcceptedException, { class => 'Paws::CloudWatchLogs::DataAlreadyAcceptedException' };
  class_type CloudWatchLogs_DeleteDestinationRequest, { class => 'Paws::CloudWatchLogs::DeleteDestinationRequest' };
  class_type CloudWatchLogs_DeleteLogGroupRequest, { class => 'Paws::CloudWatchLogs::DeleteLogGroupRequest' };
  class_type CloudWatchLogs_DeleteLogStreamRequest, { class => 'Paws::CloudWatchLogs::DeleteLogStreamRequest' };
  class_type CloudWatchLogs_DeleteMetricFilterRequest, { class => 'Paws::CloudWatchLogs::DeleteMetricFilterRequest' };
  class_type CloudWatchLogs_DeleteResourcePolicyRequest, { class => 'Paws::CloudWatchLogs::DeleteResourcePolicyRequest' };
  class_type CloudWatchLogs_DeleteRetentionPolicyRequest, { class => 'Paws::CloudWatchLogs::DeleteRetentionPolicyRequest' };
  class_type CloudWatchLogs_DeleteSubscriptionFilterRequest, { class => 'Paws::CloudWatchLogs::DeleteSubscriptionFilterRequest' };
  class_type CloudWatchLogs_DescribeDestinationsRequest, { class => 'Paws::CloudWatchLogs::DescribeDestinationsRequest' };
  class_type CloudWatchLogs_DescribeDestinationsResponse, { class => 'Paws::CloudWatchLogs::DescribeDestinationsResponse' };
  class_type CloudWatchLogs_DescribeExportTasksRequest, { class => 'Paws::CloudWatchLogs::DescribeExportTasksRequest' };
  class_type CloudWatchLogs_DescribeExportTasksResponse, { class => 'Paws::CloudWatchLogs::DescribeExportTasksResponse' };
  class_type CloudWatchLogs_DescribeLogGroupsRequest, { class => 'Paws::CloudWatchLogs::DescribeLogGroupsRequest' };
  class_type CloudWatchLogs_DescribeLogGroupsResponse, { class => 'Paws::CloudWatchLogs::DescribeLogGroupsResponse' };
  class_type CloudWatchLogs_DescribeLogStreamsRequest, { class => 'Paws::CloudWatchLogs::DescribeLogStreamsRequest' };
  class_type CloudWatchLogs_DescribeLogStreamsResponse, { class => 'Paws::CloudWatchLogs::DescribeLogStreamsResponse' };
  class_type CloudWatchLogs_DescribeMetricFiltersRequest, { class => 'Paws::CloudWatchLogs::DescribeMetricFiltersRequest' };
  class_type CloudWatchLogs_DescribeMetricFiltersResponse, { class => 'Paws::CloudWatchLogs::DescribeMetricFiltersResponse' };
  class_type CloudWatchLogs_DescribeQueriesRequest, { class => 'Paws::CloudWatchLogs::DescribeQueriesRequest' };
  class_type CloudWatchLogs_DescribeQueriesResponse, { class => 'Paws::CloudWatchLogs::DescribeQueriesResponse' };
  class_type CloudWatchLogs_DescribeResourcePoliciesRequest, { class => 'Paws::CloudWatchLogs::DescribeResourcePoliciesRequest' };
  class_type CloudWatchLogs_DescribeResourcePoliciesResponse, { class => 'Paws::CloudWatchLogs::DescribeResourcePoliciesResponse' };
  class_type CloudWatchLogs_DescribeSubscriptionFiltersRequest, { class => 'Paws::CloudWatchLogs::DescribeSubscriptionFiltersRequest' };
  class_type CloudWatchLogs_DescribeSubscriptionFiltersResponse, { class => 'Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse' };
  class_type CloudWatchLogs_Destination, { class => 'Paws::CloudWatchLogs::Destination' };
  class_type CloudWatchLogs_DisassociateKmsKeyRequest, { class => 'Paws::CloudWatchLogs::DisassociateKmsKeyRequest' };
  class_type CloudWatchLogs_ExportTask, { class => 'Paws::CloudWatchLogs::ExportTask' };
  class_type CloudWatchLogs_ExportTaskExecutionInfo, { class => 'Paws::CloudWatchLogs::ExportTaskExecutionInfo' };
  class_type CloudWatchLogs_ExportTaskStatus, { class => 'Paws::CloudWatchLogs::ExportTaskStatus' };
  class_type CloudWatchLogs_ExtractedValues, { class => 'Paws::CloudWatchLogs::ExtractedValues' };
  class_type CloudWatchLogs_FilteredLogEvent, { class => 'Paws::CloudWatchLogs::FilteredLogEvent' };
  class_type CloudWatchLogs_FilterLogEventsRequest, { class => 'Paws::CloudWatchLogs::FilterLogEventsRequest' };
  class_type CloudWatchLogs_FilterLogEventsResponse, { class => 'Paws::CloudWatchLogs::FilterLogEventsResponse' };
  class_type CloudWatchLogs_GetLogEventsRequest, { class => 'Paws::CloudWatchLogs::GetLogEventsRequest' };
  class_type CloudWatchLogs_GetLogEventsResponse, { class => 'Paws::CloudWatchLogs::GetLogEventsResponse' };
  class_type CloudWatchLogs_GetLogGroupFieldsRequest, { class => 'Paws::CloudWatchLogs::GetLogGroupFieldsRequest' };
  class_type CloudWatchLogs_GetLogGroupFieldsResponse, { class => 'Paws::CloudWatchLogs::GetLogGroupFieldsResponse' };
  class_type CloudWatchLogs_GetLogRecordRequest, { class => 'Paws::CloudWatchLogs::GetLogRecordRequest' };
  class_type CloudWatchLogs_GetLogRecordResponse, { class => 'Paws::CloudWatchLogs::GetLogRecordResponse' };
  class_type CloudWatchLogs_GetQueryResultsRequest, { class => 'Paws::CloudWatchLogs::GetQueryResultsRequest' };
  class_type CloudWatchLogs_GetQueryResultsResponse, { class => 'Paws::CloudWatchLogs::GetQueryResultsResponse' };
  class_type CloudWatchLogs_InputLogEvent, { class => 'Paws::CloudWatchLogs::InputLogEvent' };
  class_type CloudWatchLogs_InvalidOperationException, { class => 'Paws::CloudWatchLogs::InvalidOperationException' };
  class_type CloudWatchLogs_InvalidParameterException, { class => 'Paws::CloudWatchLogs::InvalidParameterException' };
  class_type CloudWatchLogs_InvalidSequenceTokenException, { class => 'Paws::CloudWatchLogs::InvalidSequenceTokenException' };
  class_type CloudWatchLogs_LimitExceededException, { class => 'Paws::CloudWatchLogs::LimitExceededException' };
  class_type CloudWatchLogs_ListTagsLogGroupRequest, { class => 'Paws::CloudWatchLogs::ListTagsLogGroupRequest' };
  class_type CloudWatchLogs_ListTagsLogGroupResponse, { class => 'Paws::CloudWatchLogs::ListTagsLogGroupResponse' };
  class_type CloudWatchLogs_LogGroup, { class => 'Paws::CloudWatchLogs::LogGroup' };
  class_type CloudWatchLogs_LogGroupField, { class => 'Paws::CloudWatchLogs::LogGroupField' };
  class_type CloudWatchLogs_LogRecord, { class => 'Paws::CloudWatchLogs::LogRecord' };
  class_type CloudWatchLogs_LogStream, { class => 'Paws::CloudWatchLogs::LogStream' };
  class_type CloudWatchLogs_MalformedQueryException, { class => 'Paws::CloudWatchLogs::MalformedQueryException' };
  class_type CloudWatchLogs_MetricFilter, { class => 'Paws::CloudWatchLogs::MetricFilter' };
  class_type CloudWatchLogs_MetricFilterMatchRecord, { class => 'Paws::CloudWatchLogs::MetricFilterMatchRecord' };
  class_type CloudWatchLogs_MetricTransformation, { class => 'Paws::CloudWatchLogs::MetricTransformation' };
  class_type CloudWatchLogs_OperationAbortedException, { class => 'Paws::CloudWatchLogs::OperationAbortedException' };
  class_type CloudWatchLogs_OutputLogEvent, { class => 'Paws::CloudWatchLogs::OutputLogEvent' };
  class_type CloudWatchLogs_PutDestinationPolicyRequest, { class => 'Paws::CloudWatchLogs::PutDestinationPolicyRequest' };
  class_type CloudWatchLogs_PutDestinationRequest, { class => 'Paws::CloudWatchLogs::PutDestinationRequest' };
  class_type CloudWatchLogs_PutDestinationResponse, { class => 'Paws::CloudWatchLogs::PutDestinationResponse' };
  class_type CloudWatchLogs_PutLogEventsRequest, { class => 'Paws::CloudWatchLogs::PutLogEventsRequest' };
  class_type CloudWatchLogs_PutLogEventsResponse, { class => 'Paws::CloudWatchLogs::PutLogEventsResponse' };
  class_type CloudWatchLogs_PutMetricFilterRequest, { class => 'Paws::CloudWatchLogs::PutMetricFilterRequest' };
  class_type CloudWatchLogs_PutResourcePolicyRequest, { class => 'Paws::CloudWatchLogs::PutResourcePolicyRequest' };
  class_type CloudWatchLogs_PutResourcePolicyResponse, { class => 'Paws::CloudWatchLogs::PutResourcePolicyResponse' };
  class_type CloudWatchLogs_PutRetentionPolicyRequest, { class => 'Paws::CloudWatchLogs::PutRetentionPolicyRequest' };
  class_type CloudWatchLogs_PutSubscriptionFilterRequest, { class => 'Paws::CloudWatchLogs::PutSubscriptionFilterRequest' };
  class_type CloudWatchLogs_QueryCompileError, { class => 'Paws::CloudWatchLogs::QueryCompileError' };
  class_type CloudWatchLogs_QueryCompileErrorLocation, { class => 'Paws::CloudWatchLogs::QueryCompileErrorLocation' };
  class_type CloudWatchLogs_QueryInfo, { class => 'Paws::CloudWatchLogs::QueryInfo' };
  class_type CloudWatchLogs_QueryStatistics, { class => 'Paws::CloudWatchLogs::QueryStatistics' };
  class_type CloudWatchLogs_RejectedLogEventsInfo, { class => 'Paws::CloudWatchLogs::RejectedLogEventsInfo' };
  class_type CloudWatchLogs_ResourceAlreadyExistsException, { class => 'Paws::CloudWatchLogs::ResourceAlreadyExistsException' };
  class_type CloudWatchLogs_ResourceNotFoundException, { class => 'Paws::CloudWatchLogs::ResourceNotFoundException' };
  class_type CloudWatchLogs_ResourcePolicy, { class => 'Paws::CloudWatchLogs::ResourcePolicy' };
  class_type CloudWatchLogs_ResultField, { class => 'Paws::CloudWatchLogs::ResultField' };
  class_type CloudWatchLogs_SearchedLogStream, { class => 'Paws::CloudWatchLogs::SearchedLogStream' };
  class_type CloudWatchLogs_ServiceUnavailableException, { class => 'Paws::CloudWatchLogs::ServiceUnavailableException' };
  class_type CloudWatchLogs_StartQueryRequest, { class => 'Paws::CloudWatchLogs::StartQueryRequest' };
  class_type CloudWatchLogs_StartQueryResponse, { class => 'Paws::CloudWatchLogs::StartQueryResponse' };
  class_type CloudWatchLogs_StopQueryRequest, { class => 'Paws::CloudWatchLogs::StopQueryRequest' };
  class_type CloudWatchLogs_StopQueryResponse, { class => 'Paws::CloudWatchLogs::StopQueryResponse' };
  class_type CloudWatchLogs_SubscriptionFilter, { class => 'Paws::CloudWatchLogs::SubscriptionFilter' };
  class_type CloudWatchLogs_TagLogGroupRequest, { class => 'Paws::CloudWatchLogs::TagLogGroupRequest' };
  class_type CloudWatchLogs_Tags, { class => 'Paws::CloudWatchLogs::Tags' };
  class_type CloudWatchLogs_TestMetricFilterRequest, { class => 'Paws::CloudWatchLogs::TestMetricFilterRequest' };
  class_type CloudWatchLogs_TestMetricFilterResponse, { class => 'Paws::CloudWatchLogs::TestMetricFilterResponse' };
  class_type CloudWatchLogs_UnrecognizedClientException, { class => 'Paws::CloudWatchLogs::UnrecognizedClientException' };
  class_type CloudWatchLogs_UntagLogGroupRequest, { class => 'Paws::CloudWatchLogs::UntagLogGroupRequest' };

1;
