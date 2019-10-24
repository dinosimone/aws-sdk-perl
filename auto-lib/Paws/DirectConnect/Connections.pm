# Generated from json/callresult_class.tt

package Paws::DirectConnect::Connections;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Connection/;
  has Connections => (is => 'ro', isa => ArrayRef[DirectConnect_Connection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Connections' => {
                                  'class' => 'Paws::DirectConnect::Connection',
                                  'type' => 'ArrayRef[DirectConnect_Connection]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Connections' => 'connections'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connections

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[DirectConnect_Connection]

The connections.


=head2 _request_id => Str


=cut

1;