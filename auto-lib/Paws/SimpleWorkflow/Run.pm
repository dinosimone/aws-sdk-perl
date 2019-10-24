# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::Run;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw//;
  has RunId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunId' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RunId' => 'runId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::Run

=head1 ATTRIBUTES


=head2 RunId => Str

The C<runId> of a workflow execution. This ID is generated by the
service and can be used to uniquely identify the workflow execution
within a domain.


=head2 _request_id => Str


=cut

1;