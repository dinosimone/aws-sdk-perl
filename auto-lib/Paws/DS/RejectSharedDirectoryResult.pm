# Generated from json/callresult_class.tt

package Paws::DS::RejectSharedDirectoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has SharedDirectoryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SharedDirectoryId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::DS::RejectSharedDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectoryId => Str

Identifier of the shared directory in the directory consumer account.


=head2 _request_id => Str


=cut

1;