# Generated from callargs_class.tt

package Paws::IAM::GetLoginProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has UserName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetLoginProfile');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IAM::GetLoginProfileResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'GetLoginProfileResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'UserName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetLoginProfile - Arguments for method GetLoginProfile on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoginProfile on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetLoginProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoginProfile.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To get password information for an IAM user
    # The following command gets information about the password for the IAM user
    # named Anika.
    my $GetLoginProfileResponse =
      $iam->GetLoginProfile( 'UserName' => 'Anika' );

    # Results:
    my $LoginProfile = $GetLoginProfileResponse->LoginProfile;

    # Returns a L<Paws::IAM::GetLoginProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetLoginProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserName => Str

The name of the user whose login profile you want to retrieve.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoginProfile in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

