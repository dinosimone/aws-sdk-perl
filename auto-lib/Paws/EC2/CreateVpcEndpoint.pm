
package Paws::EC2::CreateVpcEndpoint;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has PolicyDocument => (is => 'ro', isa => Str, predicate => 1);
  has PrivateDnsEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has RouteTableIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ServiceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SubnetIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has VpcEndpointType => (is => 'ro', isa => Str, predicate => 1);
  has VpcId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVpcEndpoint');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateVpcEndpointResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'SubnetIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'RouteTableIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'PrivateDnsEnabled' => {
                                        'type' => 'Bool'
                                      },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'VpcEndpointType' => {
                                      'type' => 'Str'
                                    },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'SecurityGroupIds' => 'SecurityGroupId',
                       'SubnetIds' => 'SubnetId',
                       'RouteTableIds' => 'RouteTableId'
                     },
  'IsRequired' => {
                    'VpcId' => 1,
                    'ServiceName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpoint - Arguments for method CreateVpcEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpcEndpointResult = $ec2->CreateVpcEndpoint(
      ServiceName       => 'MyString',
      VpcId             => 'MyString',
      ClientToken       => 'MyString',             # OPTIONAL
      DryRun            => 1,                      # OPTIONAL
      PolicyDocument    => 'MyString',             # OPTIONAL
      PrivateDnsEnabled => 1,                      # OPTIONAL
      RouteTableIds     => [ 'MyString', ... ],    # OPTIONAL
      SecurityGroupIds  => [ 'MyString', ... ],    # OPTIONAL
      SubnetIds         => [ 'MyString', ... ],    # OPTIONAL
      VpcEndpointType   => 'Interface',            # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateVpcEndpointResult->ClientToken;
    my $VpcEndpoint = $CreateVpcEndpointResult->VpcEndpoint;

    # Returns a L<Paws::EC2::CreateVpcEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpcEndpoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see How to Ensure Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PolicyDocument => Str

A policy to attach to the endpoint that controls access to the service.
The policy must be in valid JSON format. If this parameter is not
specified, we attach a default policy that allows full access to the
service.



=head2 PrivateDnsEnabled => Bool

(Interface endpoint) Indicate whether to associate a private hosted
zone with the specified VPC. The private hosted zone contains a record
set for the default public DNS name for the service for the Region (for
example, C<kinesis.us-east-1.amazonaws.com>) which resolves to the
private IP addresses of the endpoint network interfaces in the VPC.
This enables you to make requests to the default public DNS name for
the service instead of the public DNS names that are automatically
generated by the VPC endpoint service.

To use a private hosted zone, you must set the following VPC attributes
to C<true>: C<enableDnsHostnames> and C<enableDnsSupport>. Use
ModifyVpcAttribute to set the VPC attributes.

Default: C<true>



=head2 RouteTableIds => ArrayRef[Str|Undef]

(Gateway endpoint) One or more route table IDs.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

(Interface endpoint) The ID of one or more security groups to associate
with the endpoint network interface.



=head2 B<REQUIRED> ServiceName => Str

The service name. To get a list of available services, use the
DescribeVpcEndpointServices request, or get the name from the service
provider.



=head2 SubnetIds => ArrayRef[Str|Undef]

(Interface endpoint) The ID of one or more subnets in which to create
an endpoint network interface.



=head2 VpcEndpointType => Str

The type of endpoint.

Default: Gateway

Valid values are: C<"Interface">, C<"Gateway">

=head2 B<REQUIRED> VpcId => Str

The ID of the VPC in which the endpoint will be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

