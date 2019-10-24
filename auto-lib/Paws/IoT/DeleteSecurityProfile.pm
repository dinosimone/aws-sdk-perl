
package Paws::IoT::DeleteSecurityProfile;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has ExpectedVersion => (is => 'ro', isa => Int, predicate => 1);
  has SecurityProfileName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteSecurityProfile');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/security-profiles/{securityProfileName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DeleteSecurityProfileResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExpectedVersion' => {
                                      'type' => 'Int'
                                    },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        }
             },
  'ParamInURI' => {
                    'SecurityProfileName' => 'securityProfileName'
                  },
  'ParamInQuery' => {
                      'ExpectedVersion' => 'expectedVersion'
                    },
  'IsRequired' => {
                    'SecurityProfileName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteSecurityProfile - Arguments for method DeleteSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteSecurityProfileResponse = $iot->DeleteSecurityProfile(
      SecurityProfileName => 'MySecurityProfileName',
      ExpectedVersion     => 1,                         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteSecurityProfile>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the security profile. A new version is
generated whenever the security profile is updated. If you specify a
value that is different than the actual version, a
C<VersionConflictException> is thrown.



=head2 B<REQUIRED> SecurityProfileName => Str

The name of the security profile to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

