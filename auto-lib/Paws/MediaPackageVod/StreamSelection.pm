# Generated from default/object.tt
package Paws::MediaPackageVod::StreamSelection;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::MediaPackageVod::Types qw//;
  has MaxVideoBitsPerSecond => (is => 'ro', isa => Int);
  has MinVideoBitsPerSecond => (is => 'ro', isa => Int);
  has StreamOrder => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinVideoBitsPerSecond' => {
                                            'type' => 'Int'
                                          },
               'StreamOrder' => {
                                  'type' => 'Str'
                                },
               'MaxVideoBitsPerSecond' => {
                                            'type' => 'Int'
                                          }
             },
  'NameInRequest' => {
                       'MinVideoBitsPerSecond' => 'minVideoBitsPerSecond',
                       'StreamOrder' => 'streamOrder',
                       'MaxVideoBitsPerSecond' => 'maxVideoBitsPerSecond'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::StreamSelection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::StreamSelection object:

  $service_obj->Method(Att1 => { MaxVideoBitsPerSecond => $value, ..., StreamOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::StreamSelection object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxVideoBitsPerSecond

=head1 DESCRIPTION

A StreamSelection configuration.

=head1 ATTRIBUTES


=head2 MaxVideoBitsPerSecond => Int

  The maximum video bitrate (bps) to include in output.


=head2 MinVideoBitsPerSecond => Int

  The minimum video bitrate (bps) to include in output.


=head2 StreamOrder => Str

  A directive that determines the order of streams in the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

