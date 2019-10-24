# Generated from json/callargs_class.tt

package Paws::SSM::ListComplianceSummaries;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SSM::Types qw/SSM_ComplianceStringFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[SSM_ComplianceStringFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListComplianceSummaries');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::ListComplianceSummariesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::SSM::ComplianceStringFilter',
                              'type' => 'ArrayRef[SSM_ComplianceStringFilter]'
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

Paws::SSM::ListComplianceSummaries - Arguments for method ListComplianceSummaries on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComplianceSummaries on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListComplianceSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComplianceSummaries.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListComplianceSummariesResult = $ssm->ListComplianceSummaries(
      Filters => [
        {
          Key  => 'MyComplianceStringFilterKey',    # min: 1, max: 200; OPTIONAL
          Type => 'EQUAL'
          , # values: EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN; OPTIONAL
          Values => [ 'MyComplianceFilterValue', ... ]
          ,    # min: 1, max: 20; OPTIONAL
        },
        ...
      ],       # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ComplianceSummaryItems =
      $ListComplianceSummariesResult->ComplianceSummaryItems;
    my $NextToken = $ListComplianceSummariesResult->NextToken;

    # Returns a L<Paws::SSM::ListComplianceSummariesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListComplianceSummaries>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SSM_ComplianceStringFilter]

One or more compliance or inventory filters. Use a filter to return a
more specific list of results.



=head2 MaxResults => Int

The maximum number of items to return for this call. Currently, you can
specify null or 50. The call also returns a token that you can specify
in a subsequent call to get the next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComplianceSummaries in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

