# Generated from default/object.tt
package Paws::AutoScaling::LaunchConfiguration;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Str Undef/;
  use Paws::AutoScaling::Types qw/AutoScaling_BlockDeviceMapping AutoScaling_InstanceMonitoring/;
  has AssociatePublicIpAddress => (is => 'ro', isa => Bool);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[AutoScaling_BlockDeviceMapping]);
  has ClassicLinkVPCId => (is => 'ro', isa => Str);
  has ClassicLinkVPCSecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CreatedTime => (is => 'ro', isa => Str, required => 1);
  has EbsOptimized => (is => 'ro', isa => Bool);
  has IamInstanceProfile => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str, required => 1);
  has InstanceMonitoring => (is => 'ro', isa => AutoScaling_InstanceMonitoring);
  has InstanceType => (is => 'ro', isa => Str, required => 1);
  has KernelId => (is => 'ro', isa => Str);
  has KeyName => (is => 'ro', isa => Str);
  has LaunchConfigurationARN => (is => 'ro', isa => Str);
  has LaunchConfigurationName => (is => 'ro', isa => Str, required => 1);
  has PlacementTenancy => (is => 'ro', isa => Str);
  has RamdiskId => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SpotPrice => (is => 'ro', isa => Str);
  has UserData => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageId' => {
                              'type' => 'Str'
                            },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'LaunchConfigurationARN' => {
                                             'type' => 'Str'
                                           },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'KeyName' => {
                              'type' => 'Str'
                            },
               'PlacementTenancy' => {
                                       'type' => 'Str'
                                     },
               'InstanceMonitoring' => {
                                         'class' => 'Paws::AutoScaling::InstanceMonitoring',
                                         'type' => 'AutoScaling_InstanceMonitoring'
                                       },
               'AssociatePublicIpAddress' => {
                                               'type' => 'Bool'
                                             },
               'EbsOptimized' => {
                                   'type' => 'Bool'
                                 },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'UserData' => {
                               'type' => 'Str'
                             },
               'LaunchConfigurationName' => {
                                              'type' => 'Str'
                                            },
               'SpotPrice' => {
                                'type' => 'Str'
                              },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'ClassicLinkVPCId' => {
                                       'type' => 'Str'
                                     },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::AutoScaling::BlockDeviceMapping',
                                          'type' => 'ArrayRef[AutoScaling_BlockDeviceMapping]'
                                        },
               'IamInstanceProfile' => {
                                         'type' => 'Str'
                                       },
               'ClassicLinkVPCSecurityGroups' => {
                                                   'type' => 'ArrayRef[Str|Undef]'
                                                 },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'IsRequired' => {
                    'ImageId' => 1,
                    'CreatedTime' => 1,
                    'InstanceType' => 1,
                    'LaunchConfigurationName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LaunchConfiguration object:

  $service_obj->Method(Att1 => { AssociatePublicIpAddress => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LaunchConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatePublicIpAddress

=head1 DESCRIPTION

Describes a launch configuration.

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

  [EC2-VPC] Indicates whether to assign a public IP address to each
instance.


=head2 BlockDeviceMappings => ArrayRef[AutoScaling_BlockDeviceMapping]

  A block device mapping, which specifies the block devices for the
instance.


=head2 ClassicLinkVPCId => Str

  The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
to. This parameter can only be used if you are launching EC2-Classic
instances. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon EC2 User Guide for Linux Instances> and Linking
EC2-Classic Instances to a VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink)
in the I<Amazon EC2 Auto Scaling User Guide>.


=head2 ClassicLinkVPCSecurityGroups => ArrayRef[Str|Undef]

  The IDs of one or more security groups for the VPC specified in
C<ClassicLinkVPCId>. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon EC2 User Guide for Linux Instances> and Linking
EC2-Classic Instances to a VPC
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink)
in the I<Amazon EC2 Auto Scaling User Guide>.

Conditional: This parameter is required if you specify a
ClassicLink-enabled VPC, and cannot be used otherwise.


=head2 B<REQUIRED> CreatedTime => Str

  The creation date and time for the launch configuration.


=head2 EbsOptimized => Bool

  Controls whether the instance is optimized for EBS I/O (C<true>) or not
(C<false>).


=head2 IamInstanceProfile => Str

  The name or Amazon Resource Name (ARN) of the instance profile
associated with the IAM role for the instance.


=head2 B<REQUIRED> ImageId => Str

  The ID of the Amazon Machine Image (AMI).


=head2 InstanceMonitoring => AutoScaling_InstanceMonitoring

  Controls whether instances in this group are launched with detailed
(C<true>) or basic (C<false>) monitoring.


=head2 B<REQUIRED> InstanceType => Str

  The instance type for the instances.


=head2 KernelId => Str

  The ID of the kernel associated with the AMI.


=head2 KeyName => Str

  The name of the key pair.


=head2 LaunchConfigurationARN => Str

  The Amazon Resource Name (ARN) of the launch configuration.


=head2 B<REQUIRED> LaunchConfigurationName => Str

  The name of the launch configuration.


=head2 PlacementTenancy => Str

  The tenancy of the instance, either C<default> or C<dedicated>. An
instance with C<dedicated> tenancy runs in an isolated, single-tenant
hardware and can only be launched into a VPC.


=head2 RamdiskId => Str

  The ID of the RAM disk associated with the AMI.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The security groups to associate with the instances.


=head2 SpotPrice => Str

  The price to bid when launching Spot Instances.


=head2 UserData => Str

  The user data available to the instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

