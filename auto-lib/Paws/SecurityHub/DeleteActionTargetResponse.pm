
package Paws::SecurityHub::DeleteActionTargetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has ActionTargetArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionTargetArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ActionTargetArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteActionTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

The ARN of the custom action target that was deleted.


=head2 _request_id => Str


=cut

