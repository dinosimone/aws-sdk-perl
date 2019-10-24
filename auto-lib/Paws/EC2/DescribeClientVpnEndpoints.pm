
package Paws::EC2::DescribeClientVpnEndpoints;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has ClientVpnEndpointIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeClientVpnEndpoints');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeClientVpnEndpointsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::EC2::Filter',
                              'type' => 'ArrayRef[EC2_Filter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ClientVpnEndpointIds' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             },
  'NameInRequest' => {
                       'Filters' => 'Filter',
                       'ClientVpnEndpointIds' => 'ClientVpnEndpointId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnEndpoints - Arguments for method DescribeClientVpnEndpoints on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClientVpnEndpoints on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeClientVpnEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClientVpnEndpoints.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeClientVpnEndpointsResult = $ec2->DescribeClientVpnEndpoints(
      ClientVpnEndpointIds => [ 'MyString', ... ],    # OPTIONAL
      DryRun               => 1,                      # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],
        },
        ...
      ],                                              # OPTIONAL
      MaxResults => 1,                                # OPTIONAL
      NextToken  => 'MyNextToken',                    # OPTIONAL
    );

    # Results:
    my $ClientVpnEndpoints =
      $DescribeClientVpnEndpointsResult->ClientVpnEndpoints;
    my $NextToken = $DescribeClientVpnEndpointsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeClientVpnEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeClientVpnEndpoints>

=head1 ATTRIBUTES


=head2 ClientVpnEndpointIds => ArrayRef[Str|Undef]

The ID of the Client VPN endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

One or more filters. Filter names and values are case-sensitive.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the nextToken value.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClientVpnEndpoints in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

