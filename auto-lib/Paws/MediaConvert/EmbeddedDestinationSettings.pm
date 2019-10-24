# Generated from default/object.tt
package Paws::MediaConvert::EmbeddedDestinationSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has Destination608ChannelNumber => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destination608ChannelNumber' => {
                                                  'type' => 'Int'
                                                }
             },
  'NameInRequest' => {
                       'Destination608ChannelNumber' => 'destination608ChannelNumber'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::EmbeddedDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EmbeddedDestinationSettings object:

  $service_obj->Method(Att1 => { Destination608ChannelNumber => $value, ..., Destination608ChannelNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EmbeddedDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination608ChannelNumber

=head1 DESCRIPTION

Settings specific to embedded/ancillary caption outputs, including
608/708 Channel destination number.

=head1 ATTRIBUTES


=head2 Destination608ChannelNumber => Int

  Ignore this setting unless your input captions are SCC format and your
output container is MXF. With this combination of input captions format
and output container, you can optionally use this setting to replace
the input channel number with the track number that you specify.
Specify a different number for each output captions track. If you don't
specify an output track number, the system uses the input channel
number for the output channel number. This setting applies to each
output individually. You can optionally combine two captions channels
in your output. The two output channel numbers can be one of the
following pairs: 1,3; 2,4; 1,4; or 2,3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

