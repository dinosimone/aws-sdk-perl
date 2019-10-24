# Generated from json/callresult_class.tt

package Paws::StepFunctions::CreateActivityOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has ActivityArn => (is => 'ro', isa => Str, required => 1);
  has CreationDate => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActivityArn' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ActivityArn' => 'activityArn',
                       'CreationDate' => 'creationDate'
                     },
  'IsRequired' => {
                    'ActivityArn' => 1,
                    'CreationDate' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateActivityOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityArn => Str

The Amazon Resource Name (ARN) that identifies the created activity.


=head2 B<REQUIRED> CreationDate => Str

The date the activity is created.


=head2 _request_id => Str


=cut

1;