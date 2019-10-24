# Generated from json/callargs_class.tt

package Paws::ApplicationAutoScaling::DeleteScheduledAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationAutoScaling::Types qw//;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ScalableDimension => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ScheduledActionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServiceNamespace => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteScheduledAction');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationAutoScaling::DeleteScheduledActionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduledActionName' => {
                                          'type' => 'Str'
                                        },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'ServiceNamespace' => {
                                       'type' => 'Str'
                                     },
               'ScalableDimension' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'ScheduledActionName' => 1,
                    'ResourceId' => 1,
                    'ServiceNamespace' => 1,
                    'ScalableDimension' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DeleteScheduledAction - Arguments for method DeleteScheduledAction on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteScheduledAction on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method DeleteScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteScheduledAction.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('ApplicationAutoScaling');
    my $DeleteScheduledActionResponse = $autoscaling->DeleteScheduledAction(
      ResourceId          => 'MyResourceIdMaxLen1600',
      ScalableDimension   => 'ecs:service:DesiredCount',
      ScheduledActionName => 'MyResourceIdMaxLen1600',
      ServiceNamespace    => 'ecs',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DeleteScheduledAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource associated with the scheduled action.
This string consists of the resource type and unique identifier.

=over

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

EMR cluster - The resource type is C<instancegroup> and the unique
identifier is the cluster ID and instance group ID. Example:
C<instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0>.

=item *

AppStream 2.0 fleet - The resource type is C<fleet> and the unique
identifier is the fleet name. Example: C<fleet/sample-fleet>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the resource ID. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the resource ID. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=item *

Amazon SageMaker endpoint variants - The resource type is C<variant>
and the unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

Custom resources are not supported with a resource type. This parameter
must specify the C<OutputValue> from the CloudFormation template stack
used to access the resources. The unique identifier is defined by the
service provider. More information is available in our GitHub
repository (https://github.com/aws/aws-auto-scaling-custom-resource).

=back




=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension. This string consists of the service namespace,
resource type, and scaling property.

=over

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot fleet request.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=item *

C<appstream:fleet:DesiredCapacity> - The desired capacity of an
AppStream 2.0 fleet.

=item *

C<dynamodb:table:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB table.

=item *

C<dynamodb:table:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB table.

=item *

C<dynamodb:index:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB global secondary index.

=item *

C<dynamodb:index:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB global secondary index.

=item *

C<rds:cluster:ReadReplicaCount> - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.

=item *

C<sagemaker:variant:DesiredInstanceCount> - The number of EC2 instances
for an Amazon SageMaker model endpoint variant.

=item *

C<custom-resource:ResourceType:Property> - The scalable dimension for a
custom resource provided by your own application or service.

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">

=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action.



=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service that provides the resource or
C<custom-resource> for a resource provided by your own application or
service. For more information, see AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteScheduledAction in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

