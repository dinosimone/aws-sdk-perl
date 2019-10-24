# Generated from json/callargs_class.tt

package Paws::CodePipeline::PutJobSuccessResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_CurrentRevision CodePipeline_ExecutionDetails/;
  has ContinuationToken => (is => 'ro', isa => Str, predicate => 1);
  has CurrentRevision => (is => 'ro', isa => CodePipeline_CurrentRevision, predicate => 1);
  has ExecutionDetails => (is => 'ro', isa => CodePipeline_ExecutionDetails, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutJobSuccessResult');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExecutionDetails' => {
                                       'class' => 'Paws::CodePipeline::ExecutionDetails',
                                       'type' => 'CodePipeline_ExecutionDetails'
                                     },
               'CurrentRevision' => {
                                      'class' => 'Paws::CodePipeline::CurrentRevision',
                                      'type' => 'CodePipeline_CurrentRevision'
                                    },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      },
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ExecutionDetails' => 'executionDetails',
                       'CurrentRevision' => 'currentRevision',
                       'ContinuationToken' => 'continuationToken',
                       'JobId' => 'jobId'
                     },
  'IsRequired' => {
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutJobSuccessResult - Arguments for method PutJobSuccessResult on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutJobSuccessResult on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutJobSuccessResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutJobSuccessResult.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->PutJobSuccessResult(
      JobId             => 'MyJobId',
      ContinuationToken => 'MyContinuationToken',    # OPTIONAL
      CurrentRevision   => {
        ChangeIdentifier => 'MyRevisionChangeIdentifier',    # min: 1, max: 100
        Revision         => 'MyRevision',                    # min: 1, max: 1500
        Created          => '1970-01-01T01:00:00',           # OPTIONAL
        RevisionSummary => 'MyRevisionSummary',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      ExecutionDetails => {
        ExternalExecutionId => 'MyExecutionId',    # min: 1, max: 1500; OPTIONAL
        PercentComplete     => 1,                  # max: 100; OPTIONAL
        Summary => 'MyExecutionSummary',           # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutJobSuccessResult>

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

A token generated by a job worker, such as an AWS CodeDeploy deployment
ID, that a successful job provides to identify a custom action in
progress. Future jobs will use this token in order to identify the
running instance of the action. It can be reused to return additional
information about the progress of the custom action. When the action is
complete, no continuation token should be supplied.



=head2 CurrentRevision => CodePipeline_CurrentRevision

The ID of the current revision of the artifact successfully worked upon
by the job.



=head2 ExecutionDetails => CodePipeline_ExecutionDetails

The execution details of the successful job, such as the actions taken
by the job worker.



=head2 B<REQUIRED> JobId => Str

The unique system-generated ID of the job that succeeded. This is the
same ID returned from C<PollForJobs>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutJobSuccessResult in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

