# Generated from default/object.tt
package Paws::Glue::Workflow;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_WorkflowRunProperties Glue_WorkflowRun Glue_WorkflowGraph/;
  has CreatedOn => (is => 'ro', isa => Str);
  has DefaultRunProperties => (is => 'ro', isa => Glue_WorkflowRunProperties);
  has Description => (is => 'ro', isa => Str);
  has Graph => (is => 'ro', isa => Glue_WorkflowGraph);
  has LastModifiedOn => (is => 'ro', isa => Str);
  has LastRun => (is => 'ro', isa => Glue_WorkflowRun);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastRun' => {
                              'class' => 'Paws::Glue::WorkflowRun',
                              'type' => 'Glue_WorkflowRun'
                            },
               'CreatedOn' => {
                                'type' => 'Str'
                              },
               'LastModifiedOn' => {
                                     'type' => 'Str'
                                   },
               'Graph' => {
                            'class' => 'Paws::Glue::WorkflowGraph',
                            'type' => 'Glue_WorkflowGraph'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DefaultRunProperties' => {
                                           'class' => 'Paws::Glue::WorkflowRunProperties',
                                           'type' => 'Glue_WorkflowRunProperties'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Workflow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Workflow object:

  $service_obj->Method(Att1 => { CreatedOn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Workflow object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedOn

=head1 DESCRIPTION

A workflow represents a flow in which AWS Glue components should be
executed to complete a logical task.

=head1 ATTRIBUTES


=head2 CreatedOn => Str

  The date and time when the workflow was created.


=head2 DefaultRunProperties => Glue_WorkflowRunProperties

  A collection of properties to be used as part of each execution of the
workflow.


=head2 Description => Str

  A description of the workflow.


=head2 Graph => Glue_WorkflowGraph

  The graph representing all the AWS Glue components that belong to the
workflow as nodes and directed connections between them as edges.


=head2 LastModifiedOn => Str

  The date and time when the workflow was last modified.


=head2 LastRun => Glue_WorkflowRun

  The information about the last execution of the workflow.


=head2 Name => Str

  The name of the workflow representing the flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

