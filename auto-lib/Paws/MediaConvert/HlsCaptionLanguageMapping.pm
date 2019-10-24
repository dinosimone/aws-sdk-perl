# Generated from default/object.tt
package Paws::MediaConvert::HlsCaptionLanguageMapping;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::MediaConvert::Types qw//;
  has CaptionChannel => (is => 'ro', isa => Int);
  has CustomLanguageCode => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has LanguageDescription => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CustomLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'LanguageDescription' => {
                                          'type' => 'Str'
                                        },
               'CaptionChannel' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'CustomLanguageCode' => 'customLanguageCode',
                       'LanguageCode' => 'languageCode',
                       'LanguageDescription' => 'languageDescription',
                       'CaptionChannel' => 'captionChannel'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsCaptionLanguageMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsCaptionLanguageMapping object:

  $service_obj->Method(Att1 => { CaptionChannel => $value, ..., LanguageDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsCaptionLanguageMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionChannel

=head1 DESCRIPTION

Caption Language Mapping

=head1 ATTRIBUTES


=head2 CaptionChannel => Int

  Caption channel.


=head2 CustomLanguageCode => Str

  Specify the language for this caption channel, using the ISO 639-2 or
ISO 639-3 three-letter language code


=head2 LanguageCode => Str

  Specify the language, using the ISO 639-2 three-letter code listed at
https://www.loc.gov/standards/iso639-2/php/code_list.php.


=head2 LanguageDescription => Str

  Caption language description.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

