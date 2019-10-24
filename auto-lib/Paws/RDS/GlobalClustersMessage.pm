# Generated from callresult_class.tt

package Paws::RDS::GlobalClustersMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_GlobalCluster/;
  has GlobalClusters => (is => 'ro', isa => ArrayRef[RDS_GlobalCluster]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GlobalClusters' => {
                                     'class' => 'Paws::RDS::GlobalCluster',
                                     'type' => 'ArrayRef[RDS_GlobalCluster]'
                                   },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'GlobalClusters' => 'GlobalClusterMember'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::GlobalClustersMessage

=head1 ATTRIBUTES


=head2 GlobalClusters => ArrayRef[RDS_GlobalCluster]

The list of global clusters returned by this request.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeGlobalClusters> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

