
package Paws::IoT::DetachSecurityProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has SecurityProfileName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SecurityProfileTargetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetachSecurityProfile');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/security-profiles/{securityProfileName}/targets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DetachSecurityProfileResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityProfileTargetArn' => {
                                               'type' => 'Str'
                                             },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        }
             },
  'ParamInURI' => {
                    'SecurityProfileName' => 'securityProfileName'
                  },
  'ParamInQuery' => {
                      'SecurityProfileTargetArn' => 'securityProfileTargetArn'
                    },
  'IsRequired' => {
                    'SecurityProfileTargetArn' => 1,
                    'SecurityProfileName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DetachSecurityProfile - Arguments for method DetachSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DetachSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DetachSecurityProfileResponse = $iot->DetachSecurityProfile(
      SecurityProfileName      => 'MySecurityProfileName',
      SecurityProfileTargetArn => 'MySecurityProfileTargetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DetachSecurityProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityProfileName => Str

The security profile that is detached.



=head2 B<REQUIRED> SecurityProfileTargetArn => Str

The ARN of the thing group from which the security profile is detached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

