# Generated from json/callresult_class.tt

package Paws::GlobalAccelerator::CreateAcceleratorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw/GlobalAccelerator_Accelerator/;
  has Accelerator => (is => 'ro', isa => GlobalAccelerator_Accelerator);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Accelerator' => {
                                  'class' => 'Paws::GlobalAccelerator::Accelerator',
                                  'type' => 'GlobalAccelerator_Accelerator'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => GlobalAccelerator_Accelerator

The accelerator that is created by specifying a listener and the
supported IP address types.


=head2 _request_id => Str


=cut

1;