
package Paws::CloudDirectory::DetachFromIndexResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has DetachedObjectIdentifier => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetachedObjectIdentifier' => {
                                               'type' => 'Str'
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

Paws::CloudDirectory::DetachFromIndexResponse

=head1 ATTRIBUTES


=head2 DetachedObjectIdentifier => Str

The C<ObjectIdentifier> of the object that was detached from the index.


=head2 _request_id => Str


=cut

