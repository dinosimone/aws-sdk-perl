
package Paws::RAM::CreateResourceShareResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RAM::Types qw/RAM_ResourceShare/;
  has ClientToken => (is => 'ro', isa => Str);
  has ResourceShare => (is => 'ro', isa => RAM_ResourceShare);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShare' => {
                                    'class' => 'Paws::RAM::ResourceShare',
                                    'type' => 'RAM_ResourceShare'
                                  },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceShare' => 'resourceShare',
                       'ClientToken' => 'clientToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreateResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShare => RAM_ResourceShare

Information about the resource share.


=head2 _request_id => Str


=cut

