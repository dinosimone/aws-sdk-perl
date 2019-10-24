# Generated from callresult_class.tt

package Paws::RedShift::CreateClusterSecurityGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_ClusterSecurityGroup/;
  has ClusterSecurityGroup => (is => 'ro', isa => RedShift_ClusterSecurityGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterSecurityGroup' => {
                                           'class' => 'Paws::RedShift::ClusterSecurityGroup',
                                           'type' => 'RedShift_ClusterSecurityGroup'
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

Paws::RedShift::CreateClusterSecurityGroupResult

=head1 ATTRIBUTES


=head2 ClusterSecurityGroup => RedShift_ClusterSecurityGroup




=head2 _request_id => Str


=cut

