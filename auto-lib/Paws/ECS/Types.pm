package Paws::ECS::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ECS_AccessDeniedException, { class => 'Paws::ECS::AccessDeniedException' };
  class_type ECS_Attachment, { class => 'Paws::ECS::Attachment' };
  class_type ECS_AttachmentStateChange, { class => 'Paws::ECS::AttachmentStateChange' };
  class_type ECS_Attribute, { class => 'Paws::ECS::Attribute' };
  class_type ECS_AttributeLimitExceededException, { class => 'Paws::ECS::AttributeLimitExceededException' };
  class_type ECS_AwsVpcConfiguration, { class => 'Paws::ECS::AwsVpcConfiguration' };
  class_type ECS_BlockedException, { class => 'Paws::ECS::BlockedException' };
  class_type ECS_ClientException, { class => 'Paws::ECS::ClientException' };
  class_type ECS_Cluster, { class => 'Paws::ECS::Cluster' };
  class_type ECS_ClusterContainsContainerInstancesException, { class => 'Paws::ECS::ClusterContainsContainerInstancesException' };
  class_type ECS_ClusterContainsServicesException, { class => 'Paws::ECS::ClusterContainsServicesException' };
  class_type ECS_ClusterContainsTasksException, { class => 'Paws::ECS::ClusterContainsTasksException' };
  class_type ECS_ClusterNotFoundException, { class => 'Paws::ECS::ClusterNotFoundException' };
  class_type ECS_Container, { class => 'Paws::ECS::Container' };
  class_type ECS_ContainerDefinition, { class => 'Paws::ECS::ContainerDefinition' };
  class_type ECS_ContainerDependency, { class => 'Paws::ECS::ContainerDependency' };
  class_type ECS_ContainerInstance, { class => 'Paws::ECS::ContainerInstance' };
  class_type ECS_ContainerOverride, { class => 'Paws::ECS::ContainerOverride' };
  class_type ECS_ContainerStateChange, { class => 'Paws::ECS::ContainerStateChange' };
  class_type ECS_CreateClusterRequest, { class => 'Paws::ECS::CreateClusterRequest' };
  class_type ECS_CreateClusterResponse, { class => 'Paws::ECS::CreateClusterResponse' };
  class_type ECS_CreateServiceRequest, { class => 'Paws::ECS::CreateServiceRequest' };
  class_type ECS_CreateServiceResponse, { class => 'Paws::ECS::CreateServiceResponse' };
  class_type ECS_CreateTaskSetRequest, { class => 'Paws::ECS::CreateTaskSetRequest' };
  class_type ECS_CreateTaskSetResponse, { class => 'Paws::ECS::CreateTaskSetResponse' };
  class_type ECS_DeleteAccountSettingRequest, { class => 'Paws::ECS::DeleteAccountSettingRequest' };
  class_type ECS_DeleteAccountSettingResponse, { class => 'Paws::ECS::DeleteAccountSettingResponse' };
  class_type ECS_DeleteAttributesRequest, { class => 'Paws::ECS::DeleteAttributesRequest' };
  class_type ECS_DeleteAttributesResponse, { class => 'Paws::ECS::DeleteAttributesResponse' };
  class_type ECS_DeleteClusterRequest, { class => 'Paws::ECS::DeleteClusterRequest' };
  class_type ECS_DeleteClusterResponse, { class => 'Paws::ECS::DeleteClusterResponse' };
  class_type ECS_DeleteServiceRequest, { class => 'Paws::ECS::DeleteServiceRequest' };
  class_type ECS_DeleteServiceResponse, { class => 'Paws::ECS::DeleteServiceResponse' };
  class_type ECS_DeleteTaskSetRequest, { class => 'Paws::ECS::DeleteTaskSetRequest' };
  class_type ECS_DeleteTaskSetResponse, { class => 'Paws::ECS::DeleteTaskSetResponse' };
  class_type ECS_Deployment, { class => 'Paws::ECS::Deployment' };
  class_type ECS_DeploymentConfiguration, { class => 'Paws::ECS::DeploymentConfiguration' };
  class_type ECS_DeploymentController, { class => 'Paws::ECS::DeploymentController' };
  class_type ECS_DeregisterContainerInstanceRequest, { class => 'Paws::ECS::DeregisterContainerInstanceRequest' };
  class_type ECS_DeregisterContainerInstanceResponse, { class => 'Paws::ECS::DeregisterContainerInstanceResponse' };
  class_type ECS_DeregisterTaskDefinitionRequest, { class => 'Paws::ECS::DeregisterTaskDefinitionRequest' };
  class_type ECS_DeregisterTaskDefinitionResponse, { class => 'Paws::ECS::DeregisterTaskDefinitionResponse' };
  class_type ECS_DescribeClustersRequest, { class => 'Paws::ECS::DescribeClustersRequest' };
  class_type ECS_DescribeClustersResponse, { class => 'Paws::ECS::DescribeClustersResponse' };
  class_type ECS_DescribeContainerInstancesRequest, { class => 'Paws::ECS::DescribeContainerInstancesRequest' };
  class_type ECS_DescribeContainerInstancesResponse, { class => 'Paws::ECS::DescribeContainerInstancesResponse' };
  class_type ECS_DescribeServicesRequest, { class => 'Paws::ECS::DescribeServicesRequest' };
  class_type ECS_DescribeServicesResponse, { class => 'Paws::ECS::DescribeServicesResponse' };
  class_type ECS_DescribeTaskDefinitionRequest, { class => 'Paws::ECS::DescribeTaskDefinitionRequest' };
  class_type ECS_DescribeTaskDefinitionResponse, { class => 'Paws::ECS::DescribeTaskDefinitionResponse' };
  class_type ECS_DescribeTaskSetsRequest, { class => 'Paws::ECS::DescribeTaskSetsRequest' };
  class_type ECS_DescribeTaskSetsResponse, { class => 'Paws::ECS::DescribeTaskSetsResponse' };
  class_type ECS_DescribeTasksRequest, { class => 'Paws::ECS::DescribeTasksRequest' };
  class_type ECS_DescribeTasksResponse, { class => 'Paws::ECS::DescribeTasksResponse' };
  class_type ECS_Device, { class => 'Paws::ECS::Device' };
  class_type ECS_DiscoverPollEndpointRequest, { class => 'Paws::ECS::DiscoverPollEndpointRequest' };
  class_type ECS_DiscoverPollEndpointResponse, { class => 'Paws::ECS::DiscoverPollEndpointResponse' };
  class_type ECS_DockerLabelsMap, { class => 'Paws::ECS::DockerLabelsMap' };
  class_type ECS_DockerVolumeConfiguration, { class => 'Paws::ECS::DockerVolumeConfiguration' };
  class_type ECS_Failure, { class => 'Paws::ECS::Failure' };
  class_type ECS_HealthCheck, { class => 'Paws::ECS::HealthCheck' };
  class_type ECS_HostEntry, { class => 'Paws::ECS::HostEntry' };
  class_type ECS_HostVolumeProperties, { class => 'Paws::ECS::HostVolumeProperties' };
  class_type ECS_InvalidParameterException, { class => 'Paws::ECS::InvalidParameterException' };
  class_type ECS_KernelCapabilities, { class => 'Paws::ECS::KernelCapabilities' };
  class_type ECS_KeyValuePair, { class => 'Paws::ECS::KeyValuePair' };
  class_type ECS_LinuxParameters, { class => 'Paws::ECS::LinuxParameters' };
  class_type ECS_ListAccountSettingsRequest, { class => 'Paws::ECS::ListAccountSettingsRequest' };
  class_type ECS_ListAccountSettingsResponse, { class => 'Paws::ECS::ListAccountSettingsResponse' };
  class_type ECS_ListAttributesRequest, { class => 'Paws::ECS::ListAttributesRequest' };
  class_type ECS_ListAttributesResponse, { class => 'Paws::ECS::ListAttributesResponse' };
  class_type ECS_ListClustersRequest, { class => 'Paws::ECS::ListClustersRequest' };
  class_type ECS_ListClustersResponse, { class => 'Paws::ECS::ListClustersResponse' };
  class_type ECS_ListContainerInstancesRequest, { class => 'Paws::ECS::ListContainerInstancesRequest' };
  class_type ECS_ListContainerInstancesResponse, { class => 'Paws::ECS::ListContainerInstancesResponse' };
  class_type ECS_ListServicesRequest, { class => 'Paws::ECS::ListServicesRequest' };
  class_type ECS_ListServicesResponse, { class => 'Paws::ECS::ListServicesResponse' };
  class_type ECS_ListTagsForResourceRequest, { class => 'Paws::ECS::ListTagsForResourceRequest' };
  class_type ECS_ListTagsForResourceResponse, { class => 'Paws::ECS::ListTagsForResourceResponse' };
  class_type ECS_ListTaskDefinitionFamiliesRequest, { class => 'Paws::ECS::ListTaskDefinitionFamiliesRequest' };
  class_type ECS_ListTaskDefinitionFamiliesResponse, { class => 'Paws::ECS::ListTaskDefinitionFamiliesResponse' };
  class_type ECS_ListTaskDefinitionsRequest, { class => 'Paws::ECS::ListTaskDefinitionsRequest' };
  class_type ECS_ListTaskDefinitionsResponse, { class => 'Paws::ECS::ListTaskDefinitionsResponse' };
  class_type ECS_ListTasksRequest, { class => 'Paws::ECS::ListTasksRequest' };
  class_type ECS_ListTasksResponse, { class => 'Paws::ECS::ListTasksResponse' };
  class_type ECS_LoadBalancer, { class => 'Paws::ECS::LoadBalancer' };
  class_type ECS_LogConfiguration, { class => 'Paws::ECS::LogConfiguration' };
  class_type ECS_LogConfigurationOptionsMap, { class => 'Paws::ECS::LogConfigurationOptionsMap' };
  class_type ECS_MissingVersionException, { class => 'Paws::ECS::MissingVersionException' };
  class_type ECS_MountPoint, { class => 'Paws::ECS::MountPoint' };
  class_type ECS_NetworkBinding, { class => 'Paws::ECS::NetworkBinding' };
  class_type ECS_NetworkConfiguration, { class => 'Paws::ECS::NetworkConfiguration' };
  class_type ECS_NetworkInterface, { class => 'Paws::ECS::NetworkInterface' };
  class_type ECS_NoUpdateAvailableException, { class => 'Paws::ECS::NoUpdateAvailableException' };
  class_type ECS_PlacementConstraint, { class => 'Paws::ECS::PlacementConstraint' };
  class_type ECS_PlacementStrategy, { class => 'Paws::ECS::PlacementStrategy' };
  class_type ECS_PlatformDevice, { class => 'Paws::ECS::PlatformDevice' };
  class_type ECS_PlatformTaskDefinitionIncompatibilityException, { class => 'Paws::ECS::PlatformTaskDefinitionIncompatibilityException' };
  class_type ECS_PlatformUnknownException, { class => 'Paws::ECS::PlatformUnknownException' };
  class_type ECS_PortMapping, { class => 'Paws::ECS::PortMapping' };
  class_type ECS_ProxyConfiguration, { class => 'Paws::ECS::ProxyConfiguration' };
  class_type ECS_PutAccountSettingDefaultRequest, { class => 'Paws::ECS::PutAccountSettingDefaultRequest' };
  class_type ECS_PutAccountSettingDefaultResponse, { class => 'Paws::ECS::PutAccountSettingDefaultResponse' };
  class_type ECS_PutAccountSettingRequest, { class => 'Paws::ECS::PutAccountSettingRequest' };
  class_type ECS_PutAccountSettingResponse, { class => 'Paws::ECS::PutAccountSettingResponse' };
  class_type ECS_PutAttributesRequest, { class => 'Paws::ECS::PutAttributesRequest' };
  class_type ECS_PutAttributesResponse, { class => 'Paws::ECS::PutAttributesResponse' };
  class_type ECS_RegisterContainerInstanceRequest, { class => 'Paws::ECS::RegisterContainerInstanceRequest' };
  class_type ECS_RegisterContainerInstanceResponse, { class => 'Paws::ECS::RegisterContainerInstanceResponse' };
  class_type ECS_RegisterTaskDefinitionRequest, { class => 'Paws::ECS::RegisterTaskDefinitionRequest' };
  class_type ECS_RegisterTaskDefinitionResponse, { class => 'Paws::ECS::RegisterTaskDefinitionResponse' };
  class_type ECS_RepositoryCredentials, { class => 'Paws::ECS::RepositoryCredentials' };
  class_type ECS_Resource, { class => 'Paws::ECS::Resource' };
  class_type ECS_ResourceNotFoundException, { class => 'Paws::ECS::ResourceNotFoundException' };
  class_type ECS_ResourceRequirement, { class => 'Paws::ECS::ResourceRequirement' };
  class_type ECS_RunTaskRequest, { class => 'Paws::ECS::RunTaskRequest' };
  class_type ECS_RunTaskResponse, { class => 'Paws::ECS::RunTaskResponse' };
  class_type ECS_Scale, { class => 'Paws::ECS::Scale' };
  class_type ECS_Secret, { class => 'Paws::ECS::Secret' };
  class_type ECS_ServerException, { class => 'Paws::ECS::ServerException' };
  class_type ECS_Service, { class => 'Paws::ECS::Service' };
  class_type ECS_ServiceEvent, { class => 'Paws::ECS::ServiceEvent' };
  class_type ECS_ServiceNotActiveException, { class => 'Paws::ECS::ServiceNotActiveException' };
  class_type ECS_ServiceNotFoundException, { class => 'Paws::ECS::ServiceNotFoundException' };
  class_type ECS_ServiceRegistry, { class => 'Paws::ECS::ServiceRegistry' };
  class_type ECS_Setting, { class => 'Paws::ECS::Setting' };
  class_type ECS_StartTaskRequest, { class => 'Paws::ECS::StartTaskRequest' };
  class_type ECS_StartTaskResponse, { class => 'Paws::ECS::StartTaskResponse' };
  class_type ECS_StopTaskRequest, { class => 'Paws::ECS::StopTaskRequest' };
  class_type ECS_StopTaskResponse, { class => 'Paws::ECS::StopTaskResponse' };
  class_type ECS_StringMap, { class => 'Paws::ECS::StringMap' };
  class_type ECS_SubmitAttachmentStateChangesRequest, { class => 'Paws::ECS::SubmitAttachmentStateChangesRequest' };
  class_type ECS_SubmitAttachmentStateChangesResponse, { class => 'Paws::ECS::SubmitAttachmentStateChangesResponse' };
  class_type ECS_SubmitContainerStateChangeRequest, { class => 'Paws::ECS::SubmitContainerStateChangeRequest' };
  class_type ECS_SubmitContainerStateChangeResponse, { class => 'Paws::ECS::SubmitContainerStateChangeResponse' };
  class_type ECS_SubmitTaskStateChangeRequest, { class => 'Paws::ECS::SubmitTaskStateChangeRequest' };
  class_type ECS_SubmitTaskStateChangeResponse, { class => 'Paws::ECS::SubmitTaskStateChangeResponse' };
  class_type ECS_SystemControl, { class => 'Paws::ECS::SystemControl' };
  class_type ECS_Tag, { class => 'Paws::ECS::Tag' };
  class_type ECS_TagResourceRequest, { class => 'Paws::ECS::TagResourceRequest' };
  class_type ECS_TagResourceResponse, { class => 'Paws::ECS::TagResourceResponse' };
  class_type ECS_TargetNotFoundException, { class => 'Paws::ECS::TargetNotFoundException' };
  class_type ECS_Task, { class => 'Paws::ECS::Task' };
  class_type ECS_TaskDefinition, { class => 'Paws::ECS::TaskDefinition' };
  class_type ECS_TaskDefinitionPlacementConstraint, { class => 'Paws::ECS::TaskDefinitionPlacementConstraint' };
  class_type ECS_TaskOverride, { class => 'Paws::ECS::TaskOverride' };
  class_type ECS_TaskSet, { class => 'Paws::ECS::TaskSet' };
  class_type ECS_TaskSetNotFoundException, { class => 'Paws::ECS::TaskSetNotFoundException' };
  class_type ECS_Tmpfs, { class => 'Paws::ECS::Tmpfs' };
  class_type ECS_Ulimit, { class => 'Paws::ECS::Ulimit' };
  class_type ECS_UnsupportedFeatureException, { class => 'Paws::ECS::UnsupportedFeatureException' };
  class_type ECS_UntagResourceRequest, { class => 'Paws::ECS::UntagResourceRequest' };
  class_type ECS_UntagResourceResponse, { class => 'Paws::ECS::UntagResourceResponse' };
  class_type ECS_UpdateContainerAgentRequest, { class => 'Paws::ECS::UpdateContainerAgentRequest' };
  class_type ECS_UpdateContainerAgentResponse, { class => 'Paws::ECS::UpdateContainerAgentResponse' };
  class_type ECS_UpdateContainerInstancesStateRequest, { class => 'Paws::ECS::UpdateContainerInstancesStateRequest' };
  class_type ECS_UpdateContainerInstancesStateResponse, { class => 'Paws::ECS::UpdateContainerInstancesStateResponse' };
  class_type ECS_UpdateInProgressException, { class => 'Paws::ECS::UpdateInProgressException' };
  class_type ECS_UpdateServicePrimaryTaskSetRequest, { class => 'Paws::ECS::UpdateServicePrimaryTaskSetRequest' };
  class_type ECS_UpdateServicePrimaryTaskSetResponse, { class => 'Paws::ECS::UpdateServicePrimaryTaskSetResponse' };
  class_type ECS_UpdateServiceRequest, { class => 'Paws::ECS::UpdateServiceRequest' };
  class_type ECS_UpdateServiceResponse, { class => 'Paws::ECS::UpdateServiceResponse' };
  class_type ECS_UpdateTaskSetRequest, { class => 'Paws::ECS::UpdateTaskSetRequest' };
  class_type ECS_UpdateTaskSetResponse, { class => 'Paws::ECS::UpdateTaskSetResponse' };
  class_type ECS_VersionInfo, { class => 'Paws::ECS::VersionInfo' };
  class_type ECS_Volume, { class => 'Paws::ECS::Volume' };
  class_type ECS_VolumeFrom, { class => 'Paws::ECS::VolumeFrom' };

1;
