# Generated from default/object.tt
package Paws::ElasticBeanstalk::SingleInstanceHealth;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_Deployment ElasticBeanstalk_ApplicationMetrics ElasticBeanstalk_SystemStatus/;
  has ApplicationMetrics => (is => 'ro', isa => ElasticBeanstalk_ApplicationMetrics);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has Causes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Color => (is => 'ro', isa => Str);
  has Deployment => (is => 'ro', isa => ElasticBeanstalk_Deployment);
  has HealthStatus => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceType => (is => 'ro', isa => Str);
  has LaunchedAt => (is => 'ro', isa => Str);
  has System => (is => 'ro', isa => ElasticBeanstalk_SystemStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'System' => {
                             'class' => 'Paws::ElasticBeanstalk::SystemStatus',
                             'type' => 'ElasticBeanstalk_SystemStatus'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'HealthStatus' => {
                                   'type' => 'Str'
                                 },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'ApplicationMetrics' => {
                                         'class' => 'Paws::ElasticBeanstalk::ApplicationMetrics',
                                         'type' => 'ElasticBeanstalk_ApplicationMetrics'
                                       },
               'Deployment' => {
                                 'class' => 'Paws::ElasticBeanstalk::Deployment',
                                 'type' => 'ElasticBeanstalk_Deployment'
                               },
               'Color' => {
                            'type' => 'Str'
                          },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'Causes' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LaunchedAt' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::SingleInstanceHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::SingleInstanceHealth object:

  $service_obj->Method(Att1 => { ApplicationMetrics => $value, ..., System => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::SingleInstanceHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationMetrics

=head1 DESCRIPTION

Detailed health information about an Amazon EC2 instance in your
Elastic Beanstalk environment.

=head1 ATTRIBUTES


=head2 ApplicationMetrics => ElasticBeanstalk_ApplicationMetrics

  Request metrics from your application.


=head2 AvailabilityZone => Str

  The availability zone in which the instance runs.


=head2 Causes => ArrayRef[Str|Undef]

  Represents the causes, which provide more information about the current
health status.


=head2 Color => Str

  Represents the color indicator that gives you information about the
health of the EC2 instance. For more information, see Health Colors and
Statuses
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html).


=head2 Deployment => ElasticBeanstalk_Deployment

  Information about the most recent deployment to an instance.


=head2 HealthStatus => Str

  Returns the health status of the specified instance. For more
information, see Health Colors and Statuses
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html).


=head2 InstanceId => Str

  The ID of the Amazon EC2 instance.


=head2 InstanceType => Str

  The instance's type.


=head2 LaunchedAt => Str

  The time at which the EC2 instance was launched.


=head2 System => ElasticBeanstalk_SystemStatus

  Operating system metrics from the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

