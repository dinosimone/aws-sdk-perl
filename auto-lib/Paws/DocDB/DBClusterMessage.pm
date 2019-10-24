# Generated from callresult_class.tt

package Paws::DocDB::DBClusterMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_DBCluster/;
  has DBClusters => (is => 'ro', isa => ArrayRef[DocDB_DBCluster]);
  has Marker => (is => 'ro', isa => Str);

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
               'DBClusters' => {
                                 'class' => 'Paws::DocDB::DBCluster',
                                 'type' => 'ArrayRef[DocDB_DBCluster]'
                               }
             },
  'NameInRequest' => {
                       'DBClusters' => 'DBCluster'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterMessage

=head1 ATTRIBUTES


=head2 DBClusters => ArrayRef[DocDB_DBCluster]

A list of DB clusters.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

