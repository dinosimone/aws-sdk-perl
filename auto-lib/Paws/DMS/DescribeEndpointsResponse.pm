# Generated from json/callresult_class.tt

package Paws::DMS::DescribeEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_Endpoint/;
  has Endpoints => (is => 'ro', isa => ArrayRef[DMS_Endpoint]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Endpoints' => {
                                'class' => 'Paws::DMS::Endpoint',
                                'type' => 'ArrayRef[DMS_Endpoint]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[DMS_Endpoint]

Endpoint description.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;