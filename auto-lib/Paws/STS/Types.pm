package Paws::STS::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type STS_AssumedRoleUser, { class => 'Paws::STS::AssumedRoleUser' };
  class_type STS_AssumeRoleRequest, { class => 'Paws::STS::AssumeRoleRequest' };
  class_type STS_AssumeRoleResponse, { class => 'Paws::STS::AssumeRoleResponse' };
  class_type STS_AssumeRoleWithSAMLRequest, { class => 'Paws::STS::AssumeRoleWithSAMLRequest' };
  class_type STS_AssumeRoleWithSAMLResponse, { class => 'Paws::STS::AssumeRoleWithSAMLResponse' };
  class_type STS_AssumeRoleWithWebIdentityRequest, { class => 'Paws::STS::AssumeRoleWithWebIdentityRequest' };
  class_type STS_AssumeRoleWithWebIdentityResponse, { class => 'Paws::STS::AssumeRoleWithWebIdentityResponse' };
  class_type STS_Credentials, { class => 'Paws::STS::Credentials' };
  class_type STS_DecodeAuthorizationMessageRequest, { class => 'Paws::STS::DecodeAuthorizationMessageRequest' };
  class_type STS_DecodeAuthorizationMessageResponse, { class => 'Paws::STS::DecodeAuthorizationMessageResponse' };
  class_type STS_ExpiredTokenException, { class => 'Paws::STS::ExpiredTokenException' };
  class_type STS_FederatedUser, { class => 'Paws::STS::FederatedUser' };
  class_type STS_GetCallerIdentityRequest, { class => 'Paws::STS::GetCallerIdentityRequest' };
  class_type STS_GetCallerIdentityResponse, { class => 'Paws::STS::GetCallerIdentityResponse' };
  class_type STS_GetFederationTokenRequest, { class => 'Paws::STS::GetFederationTokenRequest' };
  class_type STS_GetFederationTokenResponse, { class => 'Paws::STS::GetFederationTokenResponse' };
  class_type STS_GetSessionTokenRequest, { class => 'Paws::STS::GetSessionTokenRequest' };
  class_type STS_GetSessionTokenResponse, { class => 'Paws::STS::GetSessionTokenResponse' };
  class_type STS_IDPCommunicationErrorException, { class => 'Paws::STS::IDPCommunicationErrorException' };
  class_type STS_IDPRejectedClaimException, { class => 'Paws::STS::IDPRejectedClaimException' };
  class_type STS_InvalidAuthorizationMessageException, { class => 'Paws::STS::InvalidAuthorizationMessageException' };
  class_type STS_InvalidIdentityTokenException, { class => 'Paws::STS::InvalidIdentityTokenException' };
  class_type STS_MalformedPolicyDocumentException, { class => 'Paws::STS::MalformedPolicyDocumentException' };
  class_type STS_PackedPolicyTooLargeException, { class => 'Paws::STS::PackedPolicyTooLargeException' };
  class_type STS_PolicyDescriptorType, { class => 'Paws::STS::PolicyDescriptorType' };
  class_type STS_RegionDisabledException, { class => 'Paws::STS::RegionDisabledException' };

1;
