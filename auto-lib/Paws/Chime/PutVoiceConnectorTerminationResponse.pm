
package Paws::Chime::PutVoiceConnectorTerminationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Termination/;
  has Termination => (is => 'ro', isa => Chime_Termination);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Termination' => {
                                  'class' => 'Paws::Chime::Termination',
                                  'type' => 'Chime_Termination'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorTerminationResponse

=head1 ATTRIBUTES


=head2 Termination => Chime_Termination

The updated termination setting details.


=head2 _request_id => Str


=cut

