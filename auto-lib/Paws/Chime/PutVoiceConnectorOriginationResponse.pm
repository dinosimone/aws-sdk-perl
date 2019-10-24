
package Paws::Chime::PutVoiceConnectorOriginationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Origination/;
  has Origination => (is => 'ro', isa => Chime_Origination);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Origination' => {
                                  'class' => 'Paws::Chime::Origination',
                                  'type' => 'Chime_Origination'
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

Paws::Chime::PutVoiceConnectorOriginationResponse

=head1 ATTRIBUTES


=head2 Origination => Chime_Origination

The updated origination setting details.


=head2 _request_id => Str


=cut

