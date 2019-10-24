# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetSystemInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemInstanceDescription/;
  has Description => (is => 'ro', isa => IoTThingsGraph_SystemInstanceDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'class' => 'Paws::IoTThingsGraph::SystemInstanceDescription',
                                  'type' => 'IoTThingsGraph_SystemInstanceDescription'
                                }
             },
  'NameInRequest' => {
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemInstanceResponse

=head1 ATTRIBUTES


=head2 Description => IoTThingsGraph_SystemInstanceDescription

An object that describes the system instance.


=head2 _request_id => Str


=cut

1;