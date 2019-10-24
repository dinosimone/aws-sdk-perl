# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateAliasOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Alias/;
  has Alias => (is => 'ro', isa => GameLift_Alias);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Alias' => {
                            'class' => 'Paws::GameLift::Alias',
                            'type' => 'GameLift_Alias'
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

Paws::GameLift::UpdateAliasOutput

=head1 ATTRIBUTES


=head2 Alias => GameLift_Alias

Object that contains the updated alias configuration.


=head2 _request_id => Str


=cut

1;