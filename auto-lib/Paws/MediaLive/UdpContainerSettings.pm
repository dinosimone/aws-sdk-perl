# Generated from default/object.tt
package Paws::MediaLive::UdpContainerSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_M2tsSettings/;
  has M2tsSettings => (is => 'ro', isa => MediaLive_M2tsSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'M2tsSettings' => {
                                   'class' => 'Paws::MediaLive::M2tsSettings',
                                   'type' => 'MediaLive_M2tsSettings'
                                 }
             },
  'NameInRequest' => {
                       'M2tsSettings' => 'm2tsSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UdpContainerSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UdpContainerSettings object:

  $service_obj->Method(Att1 => { M2tsSettings => $value, ..., M2tsSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UdpContainerSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->M2tsSettings

=head1 DESCRIPTION

Udp Container Settings

=head1 ATTRIBUTES


=head2 M2tsSettings => MediaLive_M2tsSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

