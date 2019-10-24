# Generated from default/object.tt
package Paws::CodePipeline::PipelineContext;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionContext CodePipeline_StageContext/;
  has Action => (is => 'ro', isa => CodePipeline_ActionContext);
  has PipelineArn => (is => 'ro', isa => Str);
  has PipelineExecutionId => (is => 'ro', isa => Str);
  has PipelineName => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => CodePipeline_StageContext);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PipelineName' => {
                                   'type' => 'Str'
                                 },
               'Action' => {
                             'class' => 'Paws::CodePipeline::ActionContext',
                             'type' => 'CodePipeline_ActionContext'
                           },
               'PipelineExecutionId' => {
                                          'type' => 'Str'
                                        },
               'Stage' => {
                            'class' => 'Paws::CodePipeline::StageContext',
                            'type' => 'CodePipeline_StageContext'
                          },
               'PipelineArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PipelineName' => 'pipelineName',
                       'Action' => 'action',
                       'PipelineExecutionId' => 'pipelineExecutionId',
                       'Stage' => 'stage',
                       'PipelineArn' => 'pipelineArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineContext object:

  $service_obj->Method(Att1 => { Action => $value, ..., Stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineContext object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Represents information about a pipeline to a job worker.

PipelineContext contains C<pipelineArn> and C<pipelineExecutionId> for
custom action jobs. The C<pipelineArn> and C<pipelineExecutionId>
fields are not populated for ThirdParty action jobs.

=head1 ATTRIBUTES


=head2 Action => CodePipeline_ActionContext

  The context of an action to a job worker within the stage of a
pipeline.


=head2 PipelineArn => Str

  The Amazon Resource Name (ARN) of the pipeline.


=head2 PipelineExecutionId => Str

  The execution ID of the pipeline.


=head2 PipelineName => Str

  The name of the pipeline. This is a user-specified value. Pipeline
names must be unique across all pipeline names under an Amazon Web
Services account.


=head2 Stage => CodePipeline_StageContext

  The stage of the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

