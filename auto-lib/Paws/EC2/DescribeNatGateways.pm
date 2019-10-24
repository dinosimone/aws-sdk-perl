
package Paws::EC2::DescribeNatGateways;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Undef/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has Filter => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NatGatewayIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeNatGateways');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeNatGatewaysResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::EC2::Filter',
                             'type' => 'ArrayRef[EC2_Filter]'
                           },
               'NatGatewayIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NatGatewayIds' => 'NatGatewayId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNatGateways - Arguments for method DescribeNatGateways on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNatGateways on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNatGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNatGateways.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a NAT gateway
    # This example describes the NAT gateway for the specified VPC.
    my $DescribeNatGatewaysResult = $ec2->DescribeNatGateways(
      'Filter' => [

        {
          'Name'   => 'vpc-id',
          'Values' => ['vpc-1a2b3c4d']
        }
      ]
    );

    # Results:
    my $NatGateways = $DescribeNatGatewaysResult->NatGateways;

    # Returns a L<Paws::EC2::DescribeNatGatewaysResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNatGateways>

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[EC2_Filter]

One or more filters.

=over

=item *

C<nat-gateway-id> - The ID of the NAT gateway.

=item *

C<state> - The state of the NAT gateway (C<pending> | C<failed> |
C<available> | C<deleting> | C<deleted>).

=item *

C<subnet-id> - The ID of the subnet in which the NAT gateway resides.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-id> - The ID of the VPC in which the NAT gateway resides.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NatGatewayIds => ArrayRef[Str|Undef]

One or more NAT gateway IDs.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNatGateways in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

