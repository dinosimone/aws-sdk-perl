# Generated from callresult_class.tt

package Paws::Neptune::DBParameterGroupDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_Parameter/;
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[Neptune_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::Neptune::Parameter',
                                 'type' => 'ArrayRef[Neptune_Parameter]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Parameters' => 'Parameter'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DBParameterGroupDetails

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Parameters => ArrayRef[Neptune_Parameter]

A list of Parameter values.


=head2 _request_id => Str


=cut

