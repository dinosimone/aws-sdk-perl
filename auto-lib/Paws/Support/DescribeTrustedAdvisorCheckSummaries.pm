# Generated from json/callargs_class.tt

package Paws::Support::DescribeTrustedAdvisorCheckSummaries;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Support::Types qw//;
  has CheckIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeTrustedAdvisorCheckSummaries');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CheckIds' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             },
  'NameInRequest' => {
                       'CheckIds' => 'checkIds'
                     },
  'IsRequired' => {
                    'CheckIds' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckSummaries - Arguments for method DescribeTrustedAdvisorCheckSummaries on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustedAdvisorCheckSummaries on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeTrustedAdvisorCheckSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustedAdvisorCheckSummaries.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeTrustedAdvisorCheckSummariesResponse =
      $support->DescribeTrustedAdvisorCheckSummaries(
      CheckIds => [ 'MyString', ... ],

      );

    # Results:
    my $Summaries = $DescribeTrustedAdvisorCheckSummariesResponse->Summaries;

# Returns a L<Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeTrustedAdvisorCheckSummaries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckIds => ArrayRef[Str|Undef]

The IDs of the Trusted Advisor checks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustedAdvisorCheckSummaries in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

