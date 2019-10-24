
package Paws::CloudDirectory::CreateIndexResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has ObjectIdentifier => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectIdentifier' => {
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

Paws::CloudDirectory::CreateIndexResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The C<ObjectIdentifier> of the index created by this operation.


=head2 _request_id => Str


=cut

