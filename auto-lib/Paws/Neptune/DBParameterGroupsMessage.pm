# Generated from callresult_class.tt

package Paws::Neptune::DBParameterGroupsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBParameterGroup/;
  has DBParameterGroups => (is => 'ro', isa => ArrayRef[Neptune_DBParameterGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBParameterGroups' => {
                                        'class' => 'Paws::Neptune::DBParameterGroup',
                                        'type' => 'ArrayRef[Neptune_DBParameterGroup]'
                                      },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBParameterGroups' => 'DBParameterGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBParameterGroupsMessage

=head1 ATTRIBUTES


=head2 DBParameterGroups => ArrayRef[Neptune_DBParameterGroup]

A list of DBParameterGroup instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

