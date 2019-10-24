
package Paws::Robomaker::DescribeSimulationJobResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotApplicationConfig Robomaker_VPCConfigResponse Robomaker_OutputLocation Robomaker_SimulationApplicationConfig Robomaker_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has FailureBehavior => (is => 'ro', isa => Str);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has IamRole => (is => 'ro', isa => Str);
  has LastStartedAt => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has MaxJobDurationInSeconds => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has OutputLocation => (is => 'ro', isa => Robomaker_OutputLocation);
  has RobotApplications => (is => 'ro', isa => ArrayRef[Robomaker_RobotApplicationConfig]);
  has SimulationApplications => (is => 'ro', isa => ArrayRef[Robomaker_SimulationApplicationConfig]);
  has SimulationTimeMillis => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);
  has VpcConfig => (is => 'ro', isa => Robomaker_VPCConfigResponse);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SimulationApplications' => {
                                             'class' => 'Paws::Robomaker::SimulationApplicationConfig',
                                             'type' => 'ArrayRef[Robomaker_SimulationApplicationConfig]'
                                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'OutputLocation' => {
                                     'class' => 'Paws::Robomaker::OutputLocation',
                                     'type' => 'Robomaker_OutputLocation'
                                   },
               'FailureBehavior' => {
                                      'type' => 'Str'
                                    },
               'LastStartedAt' => {
                                    'type' => 'Str'
                                  },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'SimulationTimeMillis' => {
                                           'type' => 'Int'
                                         },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VpcConfig' => {
                                'class' => 'Paws::Robomaker::VPCConfigResponse',
                                'type' => 'Robomaker_VPCConfigResponse'
                              },
               'RobotApplications' => {
                                        'class' => 'Paws::Robomaker::RobotApplicationConfig',
                                        'type' => 'ArrayRef[Robomaker_RobotApplicationConfig]'
                                      },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'IamRole' => {
                              'type' => 'Str'
                            },
               'MaxJobDurationInSeconds' => {
                                              'type' => 'Int'
                                            }
             },
  'NameInRequest' => {
                       'SimulationApplications' => 'simulationApplications',
                       'Status' => 'status',
                       'OutputLocation' => 'outputLocation',
                       'FailureBehavior' => 'failureBehavior',
                       'LastStartedAt' => 'lastStartedAt',
                       'ClientRequestToken' => 'clientRequestToken',
                       'FailureReason' => 'failureReason',
                       'Arn' => 'arn',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'SimulationTimeMillis' => 'simulationTimeMillis',
                       'FailureCode' => 'failureCode',
                       'VpcConfig' => 'vpcConfig',
                       'RobotApplications' => 'robotApplications',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'IamRole' => 'iamRole',
                       'MaxJobDurationInSeconds' => 'maxJobDurationInSeconds'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation job.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 FailureBehavior => Str

The failure behavior for the simulation job.

Valid values are: C<"Fail">, C<"Continue">
=head2 FailureCode => Str

The failure code of the simulation job if it failed:

=over

=item InternalServiceError

Internal service error.

=item RobotApplicationCrash

Robot application exited abnormally.

=item SimulationApplicationCrash

Simulation application exited abnormally.

=item BadPermissionsRobotApplication

Robot application bundle could not be downloaded.

=item BadPermissionsSimulationApplication

Simulation application bundle could not be downloaded.

=item BadPermissionsS3Output

Unable to publish outputs to customer-provided S3 bucket.

=item BadPermissionsCloudwatchLogs

Unable to publish logs to customer-provided CloudWatch Logs resource.

=item SubnetIpLimitExceeded

Subnet IP limit exceeded.

=item ENILimitExceeded

ENI limit exceeded.

=item BadPermissionsUserCredentials

Unable to use the Role provided.

=item InvalidBundleRobotApplication

Robot bundle cannot be extracted (invalid format, bundling error, or
other issue).

=item InvalidBundleSimulationApplication

Simulation bundle cannot be extracted (invalid format, bundling error,
or other issue).

=item RobotApplicationVersionMismatchedEtag

Etag for RobotApplication does not match value during version creation.

=item SimulationApplicationVersionMismatchedEtag

Etag for SimulationApplication does not match value during version
creation.

=back


Valid values are: C<"InternalServiceError">, C<"RobotApplicationCrash">, C<"SimulationApplicationCrash">, C<"BadPermissionsRobotApplication">, C<"BadPermissionsSimulationApplication">, C<"BadPermissionsS3Output">, C<"BadPermissionsCloudwatchLogs">, C<"SubnetIpLimitExceeded">, C<"ENILimitExceeded">, C<"BadPermissionsUserCredentials">, C<"InvalidBundleRobotApplication">, C<"InvalidBundleSimulationApplication">, C<"RobotApplicationVersionMismatchedEtag">, C<"SimulationApplicationVersionMismatchedEtag">, C<"WrongRegionS3Output">, C<"WrongRegionRobotApplication">, C<"WrongRegionSimulationApplication">
=head2 FailureReason => Str

Details about why the simulation job failed. For more information about
troubleshooting, see Troubleshooting
(https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html).


=head2 IamRole => Str

The IAM role that allows the simulation instance to call the AWS APIs
that are specified in its associated policies on your behalf.


=head2 LastStartedAt => Str

The time, in milliseconds since the epoch, when the simulation job was
last started.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 MaxJobDurationInSeconds => Int

The maximum job duration in seconds. The value must be 8 days (691,200
seconds) or less.


=head2 Name => Str

The name of the simulation job.


=head2 OutputLocation => Robomaker_OutputLocation

Location for output files generated by the simulation job.


=head2 RobotApplications => ArrayRef[Robomaker_RobotApplicationConfig]

A list of robot applications.


=head2 SimulationApplications => ArrayRef[Robomaker_SimulationApplicationConfig]

A list of simulation applications.


=head2 SimulationTimeMillis => Int

The simulation job execution duration in milliseconds.


=head2 Status => Str

The status of the simulation job.

Valid values are: C<"Pending">, C<"Preparing">, C<"Running">, C<"Restarting">, C<"Completed">, C<"Failed">, C<"RunningFailed">, C<"Terminating">, C<"Terminated">, C<"Canceled">
=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified simulation job.


=head2 VpcConfig => Robomaker_VPCConfigResponse

The VPC configuration.


=head2 _request_id => Str


=cut

