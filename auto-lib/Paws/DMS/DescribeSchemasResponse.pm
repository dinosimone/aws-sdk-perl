# Generated from json/callresult_class.tt

package Paws::DMS::DescribeSchemasResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::DMS::Types qw//;
  has Marker => (is => 'ro', isa => Str);
  has Schemas => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Schemas' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeSchemasResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Schemas => ArrayRef[Str|Undef]

The described schema.


=head2 _request_id => Str


=cut

1;