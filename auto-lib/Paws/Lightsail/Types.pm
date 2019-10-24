package Paws::Lightsail::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type Lightsail_AccessDeniedException, { class => 'Paws::Lightsail::AccessDeniedException' };
  class_type Lightsail_AccountSetupInProgressException, { class => 'Paws::Lightsail::AccountSetupInProgressException' };
  class_type Lightsail_AllocateStaticIpRequest, { class => 'Paws::Lightsail::AllocateStaticIpRequest' };
  class_type Lightsail_AllocateStaticIpResult, { class => 'Paws::Lightsail::AllocateStaticIpResult' };
  class_type Lightsail_AttachDiskRequest, { class => 'Paws::Lightsail::AttachDiskRequest' };
  class_type Lightsail_AttachDiskResult, { class => 'Paws::Lightsail::AttachDiskResult' };
  class_type Lightsail_AttachedDiskMap, { class => 'Paws::Lightsail::AttachedDiskMap' };
  class_type Lightsail_AttachInstancesToLoadBalancerRequest, { class => 'Paws::Lightsail::AttachInstancesToLoadBalancerRequest' };
  class_type Lightsail_AttachInstancesToLoadBalancerResult, { class => 'Paws::Lightsail::AttachInstancesToLoadBalancerResult' };
  class_type Lightsail_AttachLoadBalancerTlsCertificateRequest, { class => 'Paws::Lightsail::AttachLoadBalancerTlsCertificateRequest' };
  class_type Lightsail_AttachLoadBalancerTlsCertificateResult, { class => 'Paws::Lightsail::AttachLoadBalancerTlsCertificateResult' };
  class_type Lightsail_AttachStaticIpRequest, { class => 'Paws::Lightsail::AttachStaticIpRequest' };
  class_type Lightsail_AttachStaticIpResult, { class => 'Paws::Lightsail::AttachStaticIpResult' };
  class_type Lightsail_AvailabilityZone, { class => 'Paws::Lightsail::AvailabilityZone' };
  class_type Lightsail_Blueprint, { class => 'Paws::Lightsail::Blueprint' };
  class_type Lightsail_Bundle, { class => 'Paws::Lightsail::Bundle' };
  class_type Lightsail_CloseInstancePublicPortsRequest, { class => 'Paws::Lightsail::CloseInstancePublicPortsRequest' };
  class_type Lightsail_CloseInstancePublicPortsResult, { class => 'Paws::Lightsail::CloseInstancePublicPortsResult' };
  class_type Lightsail_CloudFormationStackRecord, { class => 'Paws::Lightsail::CloudFormationStackRecord' };
  class_type Lightsail_CloudFormationStackRecordSourceInfo, { class => 'Paws::Lightsail::CloudFormationStackRecordSourceInfo' };
  class_type Lightsail_CopySnapshotRequest, { class => 'Paws::Lightsail::CopySnapshotRequest' };
  class_type Lightsail_CopySnapshotResult, { class => 'Paws::Lightsail::CopySnapshotResult' };
  class_type Lightsail_CreateCloudFormationStackRequest, { class => 'Paws::Lightsail::CreateCloudFormationStackRequest' };
  class_type Lightsail_CreateCloudFormationStackResult, { class => 'Paws::Lightsail::CreateCloudFormationStackResult' };
  class_type Lightsail_CreateDiskFromSnapshotRequest, { class => 'Paws::Lightsail::CreateDiskFromSnapshotRequest' };
  class_type Lightsail_CreateDiskFromSnapshotResult, { class => 'Paws::Lightsail::CreateDiskFromSnapshotResult' };
  class_type Lightsail_CreateDiskRequest, { class => 'Paws::Lightsail::CreateDiskRequest' };
  class_type Lightsail_CreateDiskResult, { class => 'Paws::Lightsail::CreateDiskResult' };
  class_type Lightsail_CreateDiskSnapshotRequest, { class => 'Paws::Lightsail::CreateDiskSnapshotRequest' };
  class_type Lightsail_CreateDiskSnapshotResult, { class => 'Paws::Lightsail::CreateDiskSnapshotResult' };
  class_type Lightsail_CreateDomainEntryRequest, { class => 'Paws::Lightsail::CreateDomainEntryRequest' };
  class_type Lightsail_CreateDomainEntryResult, { class => 'Paws::Lightsail::CreateDomainEntryResult' };
  class_type Lightsail_CreateDomainRequest, { class => 'Paws::Lightsail::CreateDomainRequest' };
  class_type Lightsail_CreateDomainResult, { class => 'Paws::Lightsail::CreateDomainResult' };
  class_type Lightsail_CreateInstancesFromSnapshotRequest, { class => 'Paws::Lightsail::CreateInstancesFromSnapshotRequest' };
  class_type Lightsail_CreateInstancesFromSnapshotResult, { class => 'Paws::Lightsail::CreateInstancesFromSnapshotResult' };
  class_type Lightsail_CreateInstanceSnapshotRequest, { class => 'Paws::Lightsail::CreateInstanceSnapshotRequest' };
  class_type Lightsail_CreateInstanceSnapshotResult, { class => 'Paws::Lightsail::CreateInstanceSnapshotResult' };
  class_type Lightsail_CreateInstancesRequest, { class => 'Paws::Lightsail::CreateInstancesRequest' };
  class_type Lightsail_CreateInstancesResult, { class => 'Paws::Lightsail::CreateInstancesResult' };
  class_type Lightsail_CreateKeyPairRequest, { class => 'Paws::Lightsail::CreateKeyPairRequest' };
  class_type Lightsail_CreateKeyPairResult, { class => 'Paws::Lightsail::CreateKeyPairResult' };
  class_type Lightsail_CreateLoadBalancerRequest, { class => 'Paws::Lightsail::CreateLoadBalancerRequest' };
  class_type Lightsail_CreateLoadBalancerResult, { class => 'Paws::Lightsail::CreateLoadBalancerResult' };
  class_type Lightsail_CreateLoadBalancerTlsCertificateRequest, { class => 'Paws::Lightsail::CreateLoadBalancerTlsCertificateRequest' };
  class_type Lightsail_CreateLoadBalancerTlsCertificateResult, { class => 'Paws::Lightsail::CreateLoadBalancerTlsCertificateResult' };
  class_type Lightsail_CreateRelationalDatabaseFromSnapshotRequest, { class => 'Paws::Lightsail::CreateRelationalDatabaseFromSnapshotRequest' };
  class_type Lightsail_CreateRelationalDatabaseFromSnapshotResult, { class => 'Paws::Lightsail::CreateRelationalDatabaseFromSnapshotResult' };
  class_type Lightsail_CreateRelationalDatabaseRequest, { class => 'Paws::Lightsail::CreateRelationalDatabaseRequest' };
  class_type Lightsail_CreateRelationalDatabaseResult, { class => 'Paws::Lightsail::CreateRelationalDatabaseResult' };
  class_type Lightsail_CreateRelationalDatabaseSnapshotRequest, { class => 'Paws::Lightsail::CreateRelationalDatabaseSnapshotRequest' };
  class_type Lightsail_CreateRelationalDatabaseSnapshotResult, { class => 'Paws::Lightsail::CreateRelationalDatabaseSnapshotResult' };
  class_type Lightsail_DeleteDiskRequest, { class => 'Paws::Lightsail::DeleteDiskRequest' };
  class_type Lightsail_DeleteDiskResult, { class => 'Paws::Lightsail::DeleteDiskResult' };
  class_type Lightsail_DeleteDiskSnapshotRequest, { class => 'Paws::Lightsail::DeleteDiskSnapshotRequest' };
  class_type Lightsail_DeleteDiskSnapshotResult, { class => 'Paws::Lightsail::DeleteDiskSnapshotResult' };
  class_type Lightsail_DeleteDomainEntryRequest, { class => 'Paws::Lightsail::DeleteDomainEntryRequest' };
  class_type Lightsail_DeleteDomainEntryResult, { class => 'Paws::Lightsail::DeleteDomainEntryResult' };
  class_type Lightsail_DeleteDomainRequest, { class => 'Paws::Lightsail::DeleteDomainRequest' };
  class_type Lightsail_DeleteDomainResult, { class => 'Paws::Lightsail::DeleteDomainResult' };
  class_type Lightsail_DeleteInstanceRequest, { class => 'Paws::Lightsail::DeleteInstanceRequest' };
  class_type Lightsail_DeleteInstanceResult, { class => 'Paws::Lightsail::DeleteInstanceResult' };
  class_type Lightsail_DeleteInstanceSnapshotRequest, { class => 'Paws::Lightsail::DeleteInstanceSnapshotRequest' };
  class_type Lightsail_DeleteInstanceSnapshotResult, { class => 'Paws::Lightsail::DeleteInstanceSnapshotResult' };
  class_type Lightsail_DeleteKeyPairRequest, { class => 'Paws::Lightsail::DeleteKeyPairRequest' };
  class_type Lightsail_DeleteKeyPairResult, { class => 'Paws::Lightsail::DeleteKeyPairResult' };
  class_type Lightsail_DeleteKnownHostKeysRequest, { class => 'Paws::Lightsail::DeleteKnownHostKeysRequest' };
  class_type Lightsail_DeleteKnownHostKeysResult, { class => 'Paws::Lightsail::DeleteKnownHostKeysResult' };
  class_type Lightsail_DeleteLoadBalancerRequest, { class => 'Paws::Lightsail::DeleteLoadBalancerRequest' };
  class_type Lightsail_DeleteLoadBalancerResult, { class => 'Paws::Lightsail::DeleteLoadBalancerResult' };
  class_type Lightsail_DeleteLoadBalancerTlsCertificateRequest, { class => 'Paws::Lightsail::DeleteLoadBalancerTlsCertificateRequest' };
  class_type Lightsail_DeleteLoadBalancerTlsCertificateResult, { class => 'Paws::Lightsail::DeleteLoadBalancerTlsCertificateResult' };
  class_type Lightsail_DeleteRelationalDatabaseRequest, { class => 'Paws::Lightsail::DeleteRelationalDatabaseRequest' };
  class_type Lightsail_DeleteRelationalDatabaseResult, { class => 'Paws::Lightsail::DeleteRelationalDatabaseResult' };
  class_type Lightsail_DeleteRelationalDatabaseSnapshotRequest, { class => 'Paws::Lightsail::DeleteRelationalDatabaseSnapshotRequest' };
  class_type Lightsail_DeleteRelationalDatabaseSnapshotResult, { class => 'Paws::Lightsail::DeleteRelationalDatabaseSnapshotResult' };
  class_type Lightsail_DestinationInfo, { class => 'Paws::Lightsail::DestinationInfo' };
  class_type Lightsail_DetachDiskRequest, { class => 'Paws::Lightsail::DetachDiskRequest' };
  class_type Lightsail_DetachDiskResult, { class => 'Paws::Lightsail::DetachDiskResult' };
  class_type Lightsail_DetachInstancesFromLoadBalancerRequest, { class => 'Paws::Lightsail::DetachInstancesFromLoadBalancerRequest' };
  class_type Lightsail_DetachInstancesFromLoadBalancerResult, { class => 'Paws::Lightsail::DetachInstancesFromLoadBalancerResult' };
  class_type Lightsail_DetachStaticIpRequest, { class => 'Paws::Lightsail::DetachStaticIpRequest' };
  class_type Lightsail_DetachStaticIpResult, { class => 'Paws::Lightsail::DetachStaticIpResult' };
  class_type Lightsail_Disk, { class => 'Paws::Lightsail::Disk' };
  class_type Lightsail_DiskInfo, { class => 'Paws::Lightsail::DiskInfo' };
  class_type Lightsail_DiskMap, { class => 'Paws::Lightsail::DiskMap' };
  class_type Lightsail_DiskSnapshot, { class => 'Paws::Lightsail::DiskSnapshot' };
  class_type Lightsail_DiskSnapshotInfo, { class => 'Paws::Lightsail::DiskSnapshotInfo' };
  class_type Lightsail_Domain, { class => 'Paws::Lightsail::Domain' };
  class_type Lightsail_DomainEntry, { class => 'Paws::Lightsail::DomainEntry' };
  class_type Lightsail_DomainEntryOptions, { class => 'Paws::Lightsail::DomainEntryOptions' };
  class_type Lightsail_DownloadDefaultKeyPairRequest, { class => 'Paws::Lightsail::DownloadDefaultKeyPairRequest' };
  class_type Lightsail_DownloadDefaultKeyPairResult, { class => 'Paws::Lightsail::DownloadDefaultKeyPairResult' };
  class_type Lightsail_ExportSnapshotRecord, { class => 'Paws::Lightsail::ExportSnapshotRecord' };
  class_type Lightsail_ExportSnapshotRecordSourceInfo, { class => 'Paws::Lightsail::ExportSnapshotRecordSourceInfo' };
  class_type Lightsail_ExportSnapshotRequest, { class => 'Paws::Lightsail::ExportSnapshotRequest' };
  class_type Lightsail_ExportSnapshotResult, { class => 'Paws::Lightsail::ExportSnapshotResult' };
  class_type Lightsail_GetActiveNamesRequest, { class => 'Paws::Lightsail::GetActiveNamesRequest' };
  class_type Lightsail_GetActiveNamesResult, { class => 'Paws::Lightsail::GetActiveNamesResult' };
  class_type Lightsail_GetBlueprintsRequest, { class => 'Paws::Lightsail::GetBlueprintsRequest' };
  class_type Lightsail_GetBlueprintsResult, { class => 'Paws::Lightsail::GetBlueprintsResult' };
  class_type Lightsail_GetBundlesRequest, { class => 'Paws::Lightsail::GetBundlesRequest' };
  class_type Lightsail_GetBundlesResult, { class => 'Paws::Lightsail::GetBundlesResult' };
  class_type Lightsail_GetCloudFormationStackRecordsRequest, { class => 'Paws::Lightsail::GetCloudFormationStackRecordsRequest' };
  class_type Lightsail_GetCloudFormationStackRecordsResult, { class => 'Paws::Lightsail::GetCloudFormationStackRecordsResult' };
  class_type Lightsail_GetDiskRequest, { class => 'Paws::Lightsail::GetDiskRequest' };
  class_type Lightsail_GetDiskResult, { class => 'Paws::Lightsail::GetDiskResult' };
  class_type Lightsail_GetDiskSnapshotRequest, { class => 'Paws::Lightsail::GetDiskSnapshotRequest' };
  class_type Lightsail_GetDiskSnapshotResult, { class => 'Paws::Lightsail::GetDiskSnapshotResult' };
  class_type Lightsail_GetDiskSnapshotsRequest, { class => 'Paws::Lightsail::GetDiskSnapshotsRequest' };
  class_type Lightsail_GetDiskSnapshotsResult, { class => 'Paws::Lightsail::GetDiskSnapshotsResult' };
  class_type Lightsail_GetDisksRequest, { class => 'Paws::Lightsail::GetDisksRequest' };
  class_type Lightsail_GetDisksResult, { class => 'Paws::Lightsail::GetDisksResult' };
  class_type Lightsail_GetDomainRequest, { class => 'Paws::Lightsail::GetDomainRequest' };
  class_type Lightsail_GetDomainResult, { class => 'Paws::Lightsail::GetDomainResult' };
  class_type Lightsail_GetDomainsRequest, { class => 'Paws::Lightsail::GetDomainsRequest' };
  class_type Lightsail_GetDomainsResult, { class => 'Paws::Lightsail::GetDomainsResult' };
  class_type Lightsail_GetExportSnapshotRecordsRequest, { class => 'Paws::Lightsail::GetExportSnapshotRecordsRequest' };
  class_type Lightsail_GetExportSnapshotRecordsResult, { class => 'Paws::Lightsail::GetExportSnapshotRecordsResult' };
  class_type Lightsail_GetInstanceAccessDetailsRequest, { class => 'Paws::Lightsail::GetInstanceAccessDetailsRequest' };
  class_type Lightsail_GetInstanceAccessDetailsResult, { class => 'Paws::Lightsail::GetInstanceAccessDetailsResult' };
  class_type Lightsail_GetInstanceMetricDataRequest, { class => 'Paws::Lightsail::GetInstanceMetricDataRequest' };
  class_type Lightsail_GetInstanceMetricDataResult, { class => 'Paws::Lightsail::GetInstanceMetricDataResult' };
  class_type Lightsail_GetInstancePortStatesRequest, { class => 'Paws::Lightsail::GetInstancePortStatesRequest' };
  class_type Lightsail_GetInstancePortStatesResult, { class => 'Paws::Lightsail::GetInstancePortStatesResult' };
  class_type Lightsail_GetInstanceRequest, { class => 'Paws::Lightsail::GetInstanceRequest' };
  class_type Lightsail_GetInstanceResult, { class => 'Paws::Lightsail::GetInstanceResult' };
  class_type Lightsail_GetInstanceSnapshotRequest, { class => 'Paws::Lightsail::GetInstanceSnapshotRequest' };
  class_type Lightsail_GetInstanceSnapshotResult, { class => 'Paws::Lightsail::GetInstanceSnapshotResult' };
  class_type Lightsail_GetInstanceSnapshotsRequest, { class => 'Paws::Lightsail::GetInstanceSnapshotsRequest' };
  class_type Lightsail_GetInstanceSnapshotsResult, { class => 'Paws::Lightsail::GetInstanceSnapshotsResult' };
  class_type Lightsail_GetInstancesRequest, { class => 'Paws::Lightsail::GetInstancesRequest' };
  class_type Lightsail_GetInstancesResult, { class => 'Paws::Lightsail::GetInstancesResult' };
  class_type Lightsail_GetInstanceStateRequest, { class => 'Paws::Lightsail::GetInstanceStateRequest' };
  class_type Lightsail_GetInstanceStateResult, { class => 'Paws::Lightsail::GetInstanceStateResult' };
  class_type Lightsail_GetKeyPairRequest, { class => 'Paws::Lightsail::GetKeyPairRequest' };
  class_type Lightsail_GetKeyPairResult, { class => 'Paws::Lightsail::GetKeyPairResult' };
  class_type Lightsail_GetKeyPairsRequest, { class => 'Paws::Lightsail::GetKeyPairsRequest' };
  class_type Lightsail_GetKeyPairsResult, { class => 'Paws::Lightsail::GetKeyPairsResult' };
  class_type Lightsail_GetLoadBalancerMetricDataRequest, { class => 'Paws::Lightsail::GetLoadBalancerMetricDataRequest' };
  class_type Lightsail_GetLoadBalancerMetricDataResult, { class => 'Paws::Lightsail::GetLoadBalancerMetricDataResult' };
  class_type Lightsail_GetLoadBalancerRequest, { class => 'Paws::Lightsail::GetLoadBalancerRequest' };
  class_type Lightsail_GetLoadBalancerResult, { class => 'Paws::Lightsail::GetLoadBalancerResult' };
  class_type Lightsail_GetLoadBalancersRequest, { class => 'Paws::Lightsail::GetLoadBalancersRequest' };
  class_type Lightsail_GetLoadBalancersResult, { class => 'Paws::Lightsail::GetLoadBalancersResult' };
  class_type Lightsail_GetLoadBalancerTlsCertificatesRequest, { class => 'Paws::Lightsail::GetLoadBalancerTlsCertificatesRequest' };
  class_type Lightsail_GetLoadBalancerTlsCertificatesResult, { class => 'Paws::Lightsail::GetLoadBalancerTlsCertificatesResult' };
  class_type Lightsail_GetOperationRequest, { class => 'Paws::Lightsail::GetOperationRequest' };
  class_type Lightsail_GetOperationResult, { class => 'Paws::Lightsail::GetOperationResult' };
  class_type Lightsail_GetOperationsForResourceRequest, { class => 'Paws::Lightsail::GetOperationsForResourceRequest' };
  class_type Lightsail_GetOperationsForResourceResult, { class => 'Paws::Lightsail::GetOperationsForResourceResult' };
  class_type Lightsail_GetOperationsRequest, { class => 'Paws::Lightsail::GetOperationsRequest' };
  class_type Lightsail_GetOperationsResult, { class => 'Paws::Lightsail::GetOperationsResult' };
  class_type Lightsail_GetRegionsRequest, { class => 'Paws::Lightsail::GetRegionsRequest' };
  class_type Lightsail_GetRegionsResult, { class => 'Paws::Lightsail::GetRegionsResult' };
  class_type Lightsail_GetRelationalDatabaseBlueprintsRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseBlueprintsRequest' };
  class_type Lightsail_GetRelationalDatabaseBlueprintsResult, { class => 'Paws::Lightsail::GetRelationalDatabaseBlueprintsResult' };
  class_type Lightsail_GetRelationalDatabaseBundlesRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseBundlesRequest' };
  class_type Lightsail_GetRelationalDatabaseBundlesResult, { class => 'Paws::Lightsail::GetRelationalDatabaseBundlesResult' };
  class_type Lightsail_GetRelationalDatabaseEventsRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseEventsRequest' };
  class_type Lightsail_GetRelationalDatabaseEventsResult, { class => 'Paws::Lightsail::GetRelationalDatabaseEventsResult' };
  class_type Lightsail_GetRelationalDatabaseLogEventsRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseLogEventsRequest' };
  class_type Lightsail_GetRelationalDatabaseLogEventsResult, { class => 'Paws::Lightsail::GetRelationalDatabaseLogEventsResult' };
  class_type Lightsail_GetRelationalDatabaseLogStreamsRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseLogStreamsRequest' };
  class_type Lightsail_GetRelationalDatabaseLogStreamsResult, { class => 'Paws::Lightsail::GetRelationalDatabaseLogStreamsResult' };
  class_type Lightsail_GetRelationalDatabaseMasterUserPasswordRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordRequest' };
  class_type Lightsail_GetRelationalDatabaseMasterUserPasswordResult, { class => 'Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult' };
  class_type Lightsail_GetRelationalDatabaseMetricDataRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseMetricDataRequest' };
  class_type Lightsail_GetRelationalDatabaseMetricDataResult, { class => 'Paws::Lightsail::GetRelationalDatabaseMetricDataResult' };
  class_type Lightsail_GetRelationalDatabaseParametersRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseParametersRequest' };
  class_type Lightsail_GetRelationalDatabaseParametersResult, { class => 'Paws::Lightsail::GetRelationalDatabaseParametersResult' };
  class_type Lightsail_GetRelationalDatabaseRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseRequest' };
  class_type Lightsail_GetRelationalDatabaseResult, { class => 'Paws::Lightsail::GetRelationalDatabaseResult' };
  class_type Lightsail_GetRelationalDatabaseSnapshotRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseSnapshotRequest' };
  class_type Lightsail_GetRelationalDatabaseSnapshotResult, { class => 'Paws::Lightsail::GetRelationalDatabaseSnapshotResult' };
  class_type Lightsail_GetRelationalDatabaseSnapshotsRequest, { class => 'Paws::Lightsail::GetRelationalDatabaseSnapshotsRequest' };
  class_type Lightsail_GetRelationalDatabaseSnapshotsResult, { class => 'Paws::Lightsail::GetRelationalDatabaseSnapshotsResult' };
  class_type Lightsail_GetRelationalDatabasesRequest, { class => 'Paws::Lightsail::GetRelationalDatabasesRequest' };
  class_type Lightsail_GetRelationalDatabasesResult, { class => 'Paws::Lightsail::GetRelationalDatabasesResult' };
  class_type Lightsail_GetStaticIpRequest, { class => 'Paws::Lightsail::GetStaticIpRequest' };
  class_type Lightsail_GetStaticIpResult, { class => 'Paws::Lightsail::GetStaticIpResult' };
  class_type Lightsail_GetStaticIpsRequest, { class => 'Paws::Lightsail::GetStaticIpsRequest' };
  class_type Lightsail_GetStaticIpsResult, { class => 'Paws::Lightsail::GetStaticIpsResult' };
  class_type Lightsail_HostKeyAttributes, { class => 'Paws::Lightsail::HostKeyAttributes' };
  class_type Lightsail_ImportKeyPairRequest, { class => 'Paws::Lightsail::ImportKeyPairRequest' };
  class_type Lightsail_ImportKeyPairResult, { class => 'Paws::Lightsail::ImportKeyPairResult' };
  class_type Lightsail_Instance, { class => 'Paws::Lightsail::Instance' };
  class_type Lightsail_InstanceAccessDetails, { class => 'Paws::Lightsail::InstanceAccessDetails' };
  class_type Lightsail_InstanceEntry, { class => 'Paws::Lightsail::InstanceEntry' };
  class_type Lightsail_InstanceHardware, { class => 'Paws::Lightsail::InstanceHardware' };
  class_type Lightsail_InstanceHealthSummary, { class => 'Paws::Lightsail::InstanceHealthSummary' };
  class_type Lightsail_InstanceNetworking, { class => 'Paws::Lightsail::InstanceNetworking' };
  class_type Lightsail_InstancePortInfo, { class => 'Paws::Lightsail::InstancePortInfo' };
  class_type Lightsail_InstancePortState, { class => 'Paws::Lightsail::InstancePortState' };
  class_type Lightsail_InstanceSnapshot, { class => 'Paws::Lightsail::InstanceSnapshot' };
  class_type Lightsail_InstanceSnapshotInfo, { class => 'Paws::Lightsail::InstanceSnapshotInfo' };
  class_type Lightsail_InstanceState, { class => 'Paws::Lightsail::InstanceState' };
  class_type Lightsail_InvalidInputException, { class => 'Paws::Lightsail::InvalidInputException' };
  class_type Lightsail_IsVpcPeeredRequest, { class => 'Paws::Lightsail::IsVpcPeeredRequest' };
  class_type Lightsail_IsVpcPeeredResult, { class => 'Paws::Lightsail::IsVpcPeeredResult' };
  class_type Lightsail_KeyPair, { class => 'Paws::Lightsail::KeyPair' };
  class_type Lightsail_LoadBalancer, { class => 'Paws::Lightsail::LoadBalancer' };
  class_type Lightsail_LoadBalancerConfigurationOptions, { class => 'Paws::Lightsail::LoadBalancerConfigurationOptions' };
  class_type Lightsail_LoadBalancerTlsCertificate, { class => 'Paws::Lightsail::LoadBalancerTlsCertificate' };
  class_type Lightsail_LoadBalancerTlsCertificateDomainValidationOption, { class => 'Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption' };
  class_type Lightsail_LoadBalancerTlsCertificateDomainValidationRecord, { class => 'Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord' };
  class_type Lightsail_LoadBalancerTlsCertificateRenewalSummary, { class => 'Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary' };
  class_type Lightsail_LoadBalancerTlsCertificateSummary, { class => 'Paws::Lightsail::LoadBalancerTlsCertificateSummary' };
  class_type Lightsail_LogEvent, { class => 'Paws::Lightsail::LogEvent' };
  class_type Lightsail_MetricDatapoint, { class => 'Paws::Lightsail::MetricDatapoint' };
  class_type Lightsail_MonthlyTransfer, { class => 'Paws::Lightsail::MonthlyTransfer' };
  class_type Lightsail_NotFoundException, { class => 'Paws::Lightsail::NotFoundException' };
  class_type Lightsail_OpenInstancePublicPortsRequest, { class => 'Paws::Lightsail::OpenInstancePublicPortsRequest' };
  class_type Lightsail_OpenInstancePublicPortsResult, { class => 'Paws::Lightsail::OpenInstancePublicPortsResult' };
  class_type Lightsail_Operation, { class => 'Paws::Lightsail::Operation' };
  class_type Lightsail_OperationFailureException, { class => 'Paws::Lightsail::OperationFailureException' };
  class_type Lightsail_PasswordData, { class => 'Paws::Lightsail::PasswordData' };
  class_type Lightsail_PeerVpcRequest, { class => 'Paws::Lightsail::PeerVpcRequest' };
  class_type Lightsail_PeerVpcResult, { class => 'Paws::Lightsail::PeerVpcResult' };
  class_type Lightsail_PendingMaintenanceAction, { class => 'Paws::Lightsail::PendingMaintenanceAction' };
  class_type Lightsail_PendingModifiedRelationalDatabaseValues, { class => 'Paws::Lightsail::PendingModifiedRelationalDatabaseValues' };
  class_type Lightsail_PortInfo, { class => 'Paws::Lightsail::PortInfo' };
  class_type Lightsail_PutInstancePublicPortsRequest, { class => 'Paws::Lightsail::PutInstancePublicPortsRequest' };
  class_type Lightsail_PutInstancePublicPortsResult, { class => 'Paws::Lightsail::PutInstancePublicPortsResult' };
  class_type Lightsail_RebootInstanceRequest, { class => 'Paws::Lightsail::RebootInstanceRequest' };
  class_type Lightsail_RebootInstanceResult, { class => 'Paws::Lightsail::RebootInstanceResult' };
  class_type Lightsail_RebootRelationalDatabaseRequest, { class => 'Paws::Lightsail::RebootRelationalDatabaseRequest' };
  class_type Lightsail_RebootRelationalDatabaseResult, { class => 'Paws::Lightsail::RebootRelationalDatabaseResult' };
  class_type Lightsail_Region, { class => 'Paws::Lightsail::Region' };
  class_type Lightsail_RelationalDatabase, { class => 'Paws::Lightsail::RelationalDatabase' };
  class_type Lightsail_RelationalDatabaseBlueprint, { class => 'Paws::Lightsail::RelationalDatabaseBlueprint' };
  class_type Lightsail_RelationalDatabaseBundle, { class => 'Paws::Lightsail::RelationalDatabaseBundle' };
  class_type Lightsail_RelationalDatabaseEndpoint, { class => 'Paws::Lightsail::RelationalDatabaseEndpoint' };
  class_type Lightsail_RelationalDatabaseEvent, { class => 'Paws::Lightsail::RelationalDatabaseEvent' };
  class_type Lightsail_RelationalDatabaseHardware, { class => 'Paws::Lightsail::RelationalDatabaseHardware' };
  class_type Lightsail_RelationalDatabaseParameter, { class => 'Paws::Lightsail::RelationalDatabaseParameter' };
  class_type Lightsail_RelationalDatabaseSnapshot, { class => 'Paws::Lightsail::RelationalDatabaseSnapshot' };
  class_type Lightsail_ReleaseStaticIpRequest, { class => 'Paws::Lightsail::ReleaseStaticIpRequest' };
  class_type Lightsail_ReleaseStaticIpResult, { class => 'Paws::Lightsail::ReleaseStaticIpResult' };
  class_type Lightsail_ResourceLocation, { class => 'Paws::Lightsail::ResourceLocation' };
  class_type Lightsail_ServiceException, { class => 'Paws::Lightsail::ServiceException' };
  class_type Lightsail_StartInstanceRequest, { class => 'Paws::Lightsail::StartInstanceRequest' };
  class_type Lightsail_StartInstanceResult, { class => 'Paws::Lightsail::StartInstanceResult' };
  class_type Lightsail_StartRelationalDatabaseRequest, { class => 'Paws::Lightsail::StartRelationalDatabaseRequest' };
  class_type Lightsail_StartRelationalDatabaseResult, { class => 'Paws::Lightsail::StartRelationalDatabaseResult' };
  class_type Lightsail_StaticIp, { class => 'Paws::Lightsail::StaticIp' };
  class_type Lightsail_StopInstanceRequest, { class => 'Paws::Lightsail::StopInstanceRequest' };
  class_type Lightsail_StopInstanceResult, { class => 'Paws::Lightsail::StopInstanceResult' };
  class_type Lightsail_StopRelationalDatabaseRequest, { class => 'Paws::Lightsail::StopRelationalDatabaseRequest' };
  class_type Lightsail_StopRelationalDatabaseResult, { class => 'Paws::Lightsail::StopRelationalDatabaseResult' };
  class_type Lightsail_Tag, { class => 'Paws::Lightsail::Tag' };
  class_type Lightsail_TagResourceRequest, { class => 'Paws::Lightsail::TagResourceRequest' };
  class_type Lightsail_TagResourceResult, { class => 'Paws::Lightsail::TagResourceResult' };
  class_type Lightsail_UnauthenticatedException, { class => 'Paws::Lightsail::UnauthenticatedException' };
  class_type Lightsail_UnpeerVpcRequest, { class => 'Paws::Lightsail::UnpeerVpcRequest' };
  class_type Lightsail_UnpeerVpcResult, { class => 'Paws::Lightsail::UnpeerVpcResult' };
  class_type Lightsail_UntagResourceRequest, { class => 'Paws::Lightsail::UntagResourceRequest' };
  class_type Lightsail_UntagResourceResult, { class => 'Paws::Lightsail::UntagResourceResult' };
  class_type Lightsail_UpdateDomainEntryRequest, { class => 'Paws::Lightsail::UpdateDomainEntryRequest' };
  class_type Lightsail_UpdateDomainEntryResult, { class => 'Paws::Lightsail::UpdateDomainEntryResult' };
  class_type Lightsail_UpdateLoadBalancerAttributeRequest, { class => 'Paws::Lightsail::UpdateLoadBalancerAttributeRequest' };
  class_type Lightsail_UpdateLoadBalancerAttributeResult, { class => 'Paws::Lightsail::UpdateLoadBalancerAttributeResult' };
  class_type Lightsail_UpdateRelationalDatabaseParametersRequest, { class => 'Paws::Lightsail::UpdateRelationalDatabaseParametersRequest' };
  class_type Lightsail_UpdateRelationalDatabaseParametersResult, { class => 'Paws::Lightsail::UpdateRelationalDatabaseParametersResult' };
  class_type Lightsail_UpdateRelationalDatabaseRequest, { class => 'Paws::Lightsail::UpdateRelationalDatabaseRequest' };
  class_type Lightsail_UpdateRelationalDatabaseResult, { class => 'Paws::Lightsail::UpdateRelationalDatabaseResult' };

1;
