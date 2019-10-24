# Generated from callresult_class.tt

package Paws::ElastiCache::CreateCacheParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheParameterGroup/;
  has CacheParameterGroup => (is => 'ro', isa => ElastiCache_CacheParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CacheParameterGroup' => {
                                          'class' => 'Paws::ElastiCache::CacheParameterGroup',
                                          'type' => 'ElastiCache_CacheParameterGroup'
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

Paws::ElastiCache::CreateCacheParameterGroupResult

=head1 ATTRIBUTES


=head2 CacheParameterGroup => ElastiCache_CacheParameterGroup




=head2 _request_id => Str


=cut

