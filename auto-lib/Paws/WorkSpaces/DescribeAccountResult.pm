# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeAccountResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw//;
  has DedicatedTenancyManagementCidrRange => (is => 'ro', isa => Str);
  has DedicatedTenancySupport => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DedicatedTenancySupport' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DedicatedTenancyManagementCidrRange' => {
                                                          'type' => 'Str'
                                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeAccountResult

=head1 ATTRIBUTES


=head2 DedicatedTenancyManagementCidrRange => Str

The IP address range, specified as an IPv4 CIDR block, used for the
management network interface.

The management network interface is connected to a secure Amazon
WorkSpaces management network. It is used for interactive streaming of
the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon
WorkSpaces to manage the WorkSpace.


=head2 DedicatedTenancySupport => Str

The status of BYOL (whether BYOL is enabled or disabled).

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;