# Generated from json/callresult_class.tt

package Paws::ECS::DeleteTaskSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_TaskSet/;
  has TaskSet => (is => 'ro', isa => ECS_TaskSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskSet' => {
                              'class' => 'Paws::ECS::TaskSet',
                              'type' => 'ECS_TaskSet'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskSet' => 'taskSet'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteTaskSetResponse

=head1 ATTRIBUTES


=head2 TaskSet => ECS_TaskSet




=head2 _request_id => Str


=cut

1;