
package Paws::SecurityHub::GetInsights;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::SecurityHub::Types qw//;
  has InsightArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetInsights');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/insights/get');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecurityHub::GetInsightsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InsightArns' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsights - Arguments for method GetInsights on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsights on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsights.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetInsightsResponse = $securityhub->GetInsights(
      InsightArns => [ 'MyNonEmptyString', ... ],    # OPTIONAL
      MaxResults  => 1,                              # OPTIONAL
      NextToken   => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $Insights  = $GetInsightsResponse->Insights;
    my $NextToken = $GetInsightsResponse->NextToken;

    # Returns a L<Paws::SecurityHub::GetInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetInsights>

=head1 ATTRIBUTES


=head2 InsightArns => ArrayRef[Str|Undef]

The ARNs of the insights that you want to describe.



=head2 MaxResults => Int

The maximum number of items that you want in the response.



=head2 NextToken => Str

Paginates results. On your first call to the C<GetInsights> operation,
set the value of this parameter to C<NULL>. For subsequent calls to the
operation, fill C<nextToken> in the request with the value of
C<nextToken> from the previous response to continue listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsights in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

