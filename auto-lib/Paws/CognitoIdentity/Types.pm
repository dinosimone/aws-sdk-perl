package Paws::CognitoIdentity::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type CognitoIdentity_CognitoIdentityProvider, { class => 'Paws::CognitoIdentity::CognitoIdentityProvider' };
  class_type CognitoIdentity_ConcurrentModificationException, { class => 'Paws::CognitoIdentity::ConcurrentModificationException' };
  class_type CognitoIdentity_CreateIdentityPoolInput, { class => 'Paws::CognitoIdentity::CreateIdentityPoolInput' };
  class_type CognitoIdentity_Credentials, { class => 'Paws::CognitoIdentity::Credentials' };
  class_type CognitoIdentity_DeleteIdentitiesInput, { class => 'Paws::CognitoIdentity::DeleteIdentitiesInput' };
  class_type CognitoIdentity_DeleteIdentitiesResponse, { class => 'Paws::CognitoIdentity::DeleteIdentitiesResponse' };
  class_type CognitoIdentity_DeleteIdentityPoolInput, { class => 'Paws::CognitoIdentity::DeleteIdentityPoolInput' };
  class_type CognitoIdentity_DescribeIdentityInput, { class => 'Paws::CognitoIdentity::DescribeIdentityInput' };
  class_type CognitoIdentity_DescribeIdentityPoolInput, { class => 'Paws::CognitoIdentity::DescribeIdentityPoolInput' };
  class_type CognitoIdentity_DeveloperUserAlreadyRegisteredException, { class => 'Paws::CognitoIdentity::DeveloperUserAlreadyRegisteredException' };
  class_type CognitoIdentity_ExternalServiceException, { class => 'Paws::CognitoIdentity::ExternalServiceException' };
  class_type CognitoIdentity_GetCredentialsForIdentityInput, { class => 'Paws::CognitoIdentity::GetCredentialsForIdentityInput' };
  class_type CognitoIdentity_GetCredentialsForIdentityResponse, { class => 'Paws::CognitoIdentity::GetCredentialsForIdentityResponse' };
  class_type CognitoIdentity_GetIdentityPoolRolesInput, { class => 'Paws::CognitoIdentity::GetIdentityPoolRolesInput' };
  class_type CognitoIdentity_GetIdentityPoolRolesResponse, { class => 'Paws::CognitoIdentity::GetIdentityPoolRolesResponse' };
  class_type CognitoIdentity_GetIdInput, { class => 'Paws::CognitoIdentity::GetIdInput' };
  class_type CognitoIdentity_GetIdResponse, { class => 'Paws::CognitoIdentity::GetIdResponse' };
  class_type CognitoIdentity_GetOpenIdTokenForDeveloperIdentityInput, { class => 'Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityInput' };
  class_type CognitoIdentity_GetOpenIdTokenForDeveloperIdentityResponse, { class => 'Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse' };
  class_type CognitoIdentity_GetOpenIdTokenInput, { class => 'Paws::CognitoIdentity::GetOpenIdTokenInput' };
  class_type CognitoIdentity_GetOpenIdTokenResponse, { class => 'Paws::CognitoIdentity::GetOpenIdTokenResponse' };
  class_type CognitoIdentity_IdentityDescription, { class => 'Paws::CognitoIdentity::IdentityDescription' };
  class_type CognitoIdentity_IdentityPool, { class => 'Paws::CognitoIdentity::IdentityPool' };
  class_type CognitoIdentity_IdentityPoolShortDescription, { class => 'Paws::CognitoIdentity::IdentityPoolShortDescription' };
  class_type CognitoIdentity_IdentityPoolTagsType, { class => 'Paws::CognitoIdentity::IdentityPoolTagsType' };
  class_type CognitoIdentity_IdentityProviders, { class => 'Paws::CognitoIdentity::IdentityProviders' };
  class_type CognitoIdentity_InternalErrorException, { class => 'Paws::CognitoIdentity::InternalErrorException' };
  class_type CognitoIdentity_InvalidIdentityPoolConfigurationException, { class => 'Paws::CognitoIdentity::InvalidIdentityPoolConfigurationException' };
  class_type CognitoIdentity_InvalidParameterException, { class => 'Paws::CognitoIdentity::InvalidParameterException' };
  class_type CognitoIdentity_LimitExceededException, { class => 'Paws::CognitoIdentity::LimitExceededException' };
  class_type CognitoIdentity_ListIdentitiesInput, { class => 'Paws::CognitoIdentity::ListIdentitiesInput' };
  class_type CognitoIdentity_ListIdentitiesResponse, { class => 'Paws::CognitoIdentity::ListIdentitiesResponse' };
  class_type CognitoIdentity_ListIdentityPoolsInput, { class => 'Paws::CognitoIdentity::ListIdentityPoolsInput' };
  class_type CognitoIdentity_ListIdentityPoolsResponse, { class => 'Paws::CognitoIdentity::ListIdentityPoolsResponse' };
  class_type CognitoIdentity_ListTagsForResourceInput, { class => 'Paws::CognitoIdentity::ListTagsForResourceInput' };
  class_type CognitoIdentity_ListTagsForResourceResponse, { class => 'Paws::CognitoIdentity::ListTagsForResourceResponse' };
  class_type CognitoIdentity_LoginsMap, { class => 'Paws::CognitoIdentity::LoginsMap' };
  class_type CognitoIdentity_LookupDeveloperIdentityInput, { class => 'Paws::CognitoIdentity::LookupDeveloperIdentityInput' };
  class_type CognitoIdentity_LookupDeveloperIdentityResponse, { class => 'Paws::CognitoIdentity::LookupDeveloperIdentityResponse' };
  class_type CognitoIdentity_MappingRule, { class => 'Paws::CognitoIdentity::MappingRule' };
  class_type CognitoIdentity_MergeDeveloperIdentitiesInput, { class => 'Paws::CognitoIdentity::MergeDeveloperIdentitiesInput' };
  class_type CognitoIdentity_MergeDeveloperIdentitiesResponse, { class => 'Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse' };
  class_type CognitoIdentity_NotAuthorizedException, { class => 'Paws::CognitoIdentity::NotAuthorizedException' };
  class_type CognitoIdentity_ResourceConflictException, { class => 'Paws::CognitoIdentity::ResourceConflictException' };
  class_type CognitoIdentity_ResourceNotFoundException, { class => 'Paws::CognitoIdentity::ResourceNotFoundException' };
  class_type CognitoIdentity_RoleMapping, { class => 'Paws::CognitoIdentity::RoleMapping' };
  class_type CognitoIdentity_RoleMappingMap, { class => 'Paws::CognitoIdentity::RoleMappingMap' };
  class_type CognitoIdentity_RolesMap, { class => 'Paws::CognitoIdentity::RolesMap' };
  class_type CognitoIdentity_RulesConfigurationType, { class => 'Paws::CognitoIdentity::RulesConfigurationType' };
  class_type CognitoIdentity_SetIdentityPoolRolesInput, { class => 'Paws::CognitoIdentity::SetIdentityPoolRolesInput' };
  class_type CognitoIdentity_TagResourceInput, { class => 'Paws::CognitoIdentity::TagResourceInput' };
  class_type CognitoIdentity_TagResourceResponse, { class => 'Paws::CognitoIdentity::TagResourceResponse' };
  class_type CognitoIdentity_TooManyRequestsException, { class => 'Paws::CognitoIdentity::TooManyRequestsException' };
  class_type CognitoIdentity_UnlinkDeveloperIdentityInput, { class => 'Paws::CognitoIdentity::UnlinkDeveloperIdentityInput' };
  class_type CognitoIdentity_UnlinkIdentityInput, { class => 'Paws::CognitoIdentity::UnlinkIdentityInput' };
  class_type CognitoIdentity_UnprocessedIdentityId, { class => 'Paws::CognitoIdentity::UnprocessedIdentityId' };
  class_type CognitoIdentity_UntagResourceInput, { class => 'Paws::CognitoIdentity::UntagResourceInput' };
  class_type CognitoIdentity_UntagResourceResponse, { class => 'Paws::CognitoIdentity::UntagResourceResponse' };

1;
