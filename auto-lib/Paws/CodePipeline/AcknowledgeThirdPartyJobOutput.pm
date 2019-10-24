# Generated from json/callresult_class.tt

package Paws::CodePipeline::AcknowledgeThirdPartyJobOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AcknowledgeThirdPartyJobOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status information for the third party job, if any.

Valid values are: C<"Created">, C<"Queued">, C<"Dispatched">, C<"InProgress">, C<"TimedOut">, C<"Succeeded">, C<"Failed">
=head2 _request_id => Str


=cut

1;