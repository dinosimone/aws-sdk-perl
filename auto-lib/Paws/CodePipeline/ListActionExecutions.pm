# Generated from json/callargs_class.tt

package Paws::CodePipeline::ListActionExecutions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionExecutionFilter/;
  has Filter => (is => 'ro', isa => CodePipeline_ActionExecutionFilter, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has PipelineName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListActionExecutions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodePipeline::ListActionExecutionsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::CodePipeline::ActionExecutionFilter',
                             'type' => 'CodePipeline_ActionExecutionFilter'
                           },
               'PipelineName' => {
                                   'type' => 'Str'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Filter' => 'filter',
                       'PipelineName' => 'pipelineName',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     },
  'IsRequired' => {
                    'PipelineName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionExecutions - Arguments for method ListActionExecutions on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActionExecutions on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListActionExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActionExecutions.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListActionExecutionsOutput = $codepipeline->ListActionExecutions(
      PipelineName => 'MyPipelineName',
      Filter       => {
        PipelineExecutionId => 'MyPipelineExecutionId',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ActionExecutionDetails =
      $ListActionExecutionsOutput->ActionExecutionDetails;
    my $NextToken = $ListActionExecutionsOutput->NextToken;

    # Returns a L<Paws::CodePipeline::ListActionExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListActionExecutions>

=head1 ATTRIBUTES


=head2 Filter => CodePipeline_ActionExecutionFilter

Input information used to filter action execution history.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value. Action execution history is retained for up to 12 months, based
on action execution start times. Default value is 100.

Detailed execution history is available for executions run on or after
February 21, 2019.



=head2 NextToken => Str

The token that was returned from the previous C<ListActionExecutions>
call, which can be used to return the next set of action executions in
the list.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline for which you want to list action execution
history.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActionExecutions in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

