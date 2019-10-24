# Generated from json/callargs_class.tt

package Paws::SSM::DescribeAutomationStepExecutions;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool/;
  use Paws::SSM::Types qw/SSM_StepExecutionFilter/;
  has AutomationExecutionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[SSM_StepExecutionFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ReverseOrder => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAutomationStepExecutions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::DescribeAutomationStepExecutionsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::SSM::StepExecutionFilter',
                              'type' => 'ArrayRef[SSM_StepExecutionFilter]'
                            },
               'ReverseOrder' => {
                                   'type' => 'Bool'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'AutomationExecutionId' => {
                                            'type' => 'Str'
                                          }
             },
  'IsRequired' => {
                    'AutomationExecutionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAutomationStepExecutions - Arguments for method DescribeAutomationStepExecutions on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutomationStepExecutions on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAutomationStepExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutomationStepExecutions.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAutomationStepExecutionsResult =
      $ssm->DescribeAutomationStepExecutions(
      AutomationExecutionId => 'MyAutomationExecutionId',
      Filters               => [
        {
          Key => 'StartTimeBefore'
          , # values: StartTimeBefore, StartTimeAfter, StepExecutionStatus, StepExecutionId, StepName, Action
          Values => [
            'MyStepExecutionFilterValue', ...    # min: 1, max: 150
          ],                                     # min: 1, max: 10

        },
        ...
      ],                                         # OPTIONAL
      MaxResults   => 1,                         # OPTIONAL
      NextToken    => 'MyNextToken',             # OPTIONAL
      ReverseOrder => 1,                         # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeAutomationStepExecutionsResult->NextToken;
    my $StepExecutions =
      $DescribeAutomationStepExecutionsResult->StepExecutions;

    # Returns a L<Paws::SSM::DescribeAutomationStepExecutionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAutomationStepExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutomationExecutionId => Str

The Automation execution ID for which you want step execution
descriptions.



=head2 Filters => ArrayRef[SSM_StepExecutionFilter]

One or more filters to limit the number of step executions returned by
the request.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 ReverseOrder => Bool

A boolean that indicates whether to list step executions in reverse
order by start time. The default value is false.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutomationStepExecutions in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

