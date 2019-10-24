# Generated from json/callresult_class.tt

package Paws::DS::ConnectDirectoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has DirectoryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectoryId' => {
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

Paws::DS::ConnectDirectoryResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the new directory.


=head2 _request_id => Str


=cut

1;