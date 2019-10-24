# Generated from json/callresult_class.tt

package Paws::SecretsManager::UpdateSecretVersionStageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecretsManager::Types qw//;
  has ARN => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ARN' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecretVersionStageResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret with the staging label that was modified.


=head2 Name => Str

The friendly name of the secret with the staging label that was
modified.


=head2 _request_id => Str


=cut

1;