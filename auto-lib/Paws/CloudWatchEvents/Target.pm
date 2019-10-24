# Generated from default/object.tt
package Paws::CloudWatchEvents::Target;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_SqsParameters CloudWatchEvents_EcsParameters CloudWatchEvents_KinesisParameters CloudWatchEvents_RunCommandParameters CloudWatchEvents_InputTransformer CloudWatchEvents_BatchParameters/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has BatchParameters => (is => 'ro', isa => CloudWatchEvents_BatchParameters);
  has EcsParameters => (is => 'ro', isa => CloudWatchEvents_EcsParameters);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Input => (is => 'ro', isa => Str);
  has InputPath => (is => 'ro', isa => Str);
  has InputTransformer => (is => 'ro', isa => CloudWatchEvents_InputTransformer);
  has KinesisParameters => (is => 'ro', isa => CloudWatchEvents_KinesisParameters);
  has RoleArn => (is => 'ro', isa => Str);
  has RunCommandParameters => (is => 'ro', isa => CloudWatchEvents_RunCommandParameters);
  has SqsParameters => (is => 'ro', isa => CloudWatchEvents_SqsParameters);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KinesisParameters' => {
                                        'class' => 'Paws::CloudWatchEvents::KinesisParameters',
                                        'type' => 'CloudWatchEvents_KinesisParameters'
                                      },
               'InputPath' => {
                                'type' => 'Str'
                              },
               'Id' => {
                         'type' => 'Str'
                       },
               'BatchParameters' => {
                                      'class' => 'Paws::CloudWatchEvents::BatchParameters',
                                      'type' => 'CloudWatchEvents_BatchParameters'
                                    },
               'EcsParameters' => {
                                    'class' => 'Paws::CloudWatchEvents::EcsParameters',
                                    'type' => 'CloudWatchEvents_EcsParameters'
                                  },
               'SqsParameters' => {
                                    'class' => 'Paws::CloudWatchEvents::SqsParameters',
                                    'type' => 'CloudWatchEvents_SqsParameters'
                                  },
               'InputTransformer' => {
                                       'class' => 'Paws::CloudWatchEvents::InputTransformer',
                                       'type' => 'CloudWatchEvents_InputTransformer'
                                     },
               'RunCommandParameters' => {
                                           'class' => 'Paws::CloudWatchEvents::RunCommandParameters',
                                           'type' => 'CloudWatchEvents_RunCommandParameters'
                                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Input' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'Id' => 1,
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::Target object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SqsParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Targets are the resources to be invoked when a rule is triggered. For a
complete list of services and resources that can be set as a target,
see PutTargets.

If you are setting the event bus of another account as the target, and
that account granted permission to your account through an organization
instead of directly by the account ID, then you must specify a
C<RoleArn> with proper permissions in the C<Target> structure. For more
information, see Sending and Receiving Events Between AWS Accounts
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEvents-CrossAccountEventDelivery.html)
in the I<Amazon CloudWatch Events User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) of the target.


=head2 BatchParameters => CloudWatchEvents_BatchParameters

  If the event target is an AWS Batch job, this contains the job
definition, job name, and other parameters. For more information, see
Jobs (https://docs.aws.amazon.com/batch/latest/userguide/jobs.html) in
the I<AWS Batch User Guide>.


=head2 EcsParameters => CloudWatchEvents_EcsParameters

  Contains the Amazon ECS task definition and task count to be used, if
the event target is an Amazon ECS task. For more information about
Amazon ECS tasks, see Task Definitions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon EC2 Container Service Developer Guide>.


=head2 B<REQUIRED> Id => Str

  The ID of the target.


=head2 Input => Str

  Valid JSON text passed to the target. In this case, nothing from the
event itself is passed to the target. For more information, see The
JavaScript Object Notation (JSON) Data Interchange Format
(http://www.rfc-editor.org/rfc/rfc7159.txt).


=head2 InputPath => Str

  The value of the JSONPath that is used for extracting part of the
matched event when passing it to the target. You must use JSON dot
notation, not bracket notation. For more information about JSON paths,
see JSONPath (http://goessner.net/articles/JsonPath/).


=head2 InputTransformer => CloudWatchEvents_InputTransformer

  Settings to enable you to provide custom input to a target based on
certain event data. You can extract one or more key-value pairs from
the event and then use that data to send customized input to the
target.


=head2 KinesisParameters => CloudWatchEvents_KinesisParameters

  The custom parameter you can use to control the shard assignment, when
the target is a Kinesis data stream. If you do not include this
parameter, the default is to use the C<eventId> as the partition key.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role to be used for this
target when the rule is triggered. If one rule triggers multiple
targets, you can use a different IAM role for each target.


=head2 RunCommandParameters => CloudWatchEvents_RunCommandParameters

  Parameters used when you are using the rule to invoke Amazon EC2 Run
Command.


=head2 SqsParameters => CloudWatchEvents_SqsParameters

  Contains the message group ID to use when the target is a FIFO queue.

If you specify an SQS FIFO queue as a target, the queue must have
content-based deduplication enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

