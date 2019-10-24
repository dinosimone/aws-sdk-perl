# Generated from default/object.tt
package Paws::MediaLive::HlsSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_StandardHlsSettings MediaLive_AudioOnlyHlsSettings/;
  has AudioOnlyHlsSettings => (is => 'ro', isa => MediaLive_AudioOnlyHlsSettings);
  has StandardHlsSettings => (is => 'ro', isa => MediaLive_StandardHlsSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StandardHlsSettings' => {
                                          'class' => 'Paws::MediaLive::StandardHlsSettings',
                                          'type' => 'MediaLive_StandardHlsSettings'
                                        },
               'AudioOnlyHlsSettings' => {
                                           'class' => 'Paws::MediaLive::AudioOnlyHlsSettings',
                                           'type' => 'MediaLive_AudioOnlyHlsSettings'
                                         }
             },
  'NameInRequest' => {
                       'StandardHlsSettings' => 'standardHlsSettings',
                       'AudioOnlyHlsSettings' => 'audioOnlyHlsSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsSettings object:

  $service_obj->Method(Att1 => { AudioOnlyHlsSettings => $value, ..., StandardHlsSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioOnlyHlsSettings

=head1 DESCRIPTION

Hls Settings

=head1 ATTRIBUTES


=head2 AudioOnlyHlsSettings => MediaLive_AudioOnlyHlsSettings

  


=head2 StandardHlsSettings => MediaLive_StandardHlsSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

