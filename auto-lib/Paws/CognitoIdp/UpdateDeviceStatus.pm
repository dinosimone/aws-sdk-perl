# Generated from json/callargs_class.tt

package Paws::CognitoIdp::UpdateDeviceStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has AccessToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeviceKey => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeviceRememberedStatus => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDeviceStatus');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::UpdateDeviceStatusResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessToken' => {
                                  'type' => 'Str'
                                },
               'DeviceRememberedStatus' => {
                                             'type' => 'Str'
                                           },
               'DeviceKey' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'AccessToken' => 1,
                    'DeviceKey' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateDeviceStatus - Arguments for method UpdateDeviceStatus on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceStatus on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateDeviceStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceStatus.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateDeviceStatusResponse = $cognito -idp->UpdateDeviceStatus(
      AccessToken            => 'MyTokenModelType',
      DeviceKey              => 'MyDeviceKeyType',
      DeviceRememberedStatus => 'remembered',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/UpdateDeviceStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.



=head2 B<REQUIRED> DeviceKey => Str

The device key.



=head2 DeviceRememberedStatus => Str

The status of whether a device is remembered.

Valid values are: C<"remembered">, C<"not_remembered">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceStatus in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

