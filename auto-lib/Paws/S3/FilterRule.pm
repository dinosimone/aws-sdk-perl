# Generated from default/object.tt
package Paws::S3::FilterRule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::FilterRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::FilterRule object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::FilterRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the Amazon S3 object key name to filter on and whether to
filter on the suffix or prefix of the key name.

=head1 ATTRIBUTES


=head2 Name => Str

  The object key name prefix or suffix identifying one or more objects to
which the filtering rule applies. The maximum length is 1,024
characters. Overlapping prefixes and suffixes are not supported. For
more information, see Configuring Event Notifications
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon Simple Storage Service Developer Guide>.


=head2 Value => Str

  The value that the filter searches for in object key names.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

