# Generated from callresult_class.tt

package Paws::DocDB::RestoreDBClusterFromSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_DBCluster/;
  has DBCluster => (is => 'ro', isa => DocDB_DBCluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBCluster' => {
                                'class' => 'Paws::DocDB::DBCluster',
                                'type' => 'DocDB_DBCluster'
                              },
               '_request_id' => {
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

Paws::DocDB::RestoreDBClusterFromSnapshotResult

=head1 ATTRIBUTES


=head2 DBCluster => DocDB_DBCluster




=head2 _request_id => Str


=cut

