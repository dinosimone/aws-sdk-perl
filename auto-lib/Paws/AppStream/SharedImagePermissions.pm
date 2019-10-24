# Generated from default/object.tt
package Paws::AppStream::SharedImagePermissions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_ImagePermissions/;
  has ImagePermissions => (is => 'ro', isa => AppStream_ImagePermissions, required => 1);
  has SharedAccountId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImagePermissions' => {
                                       'class' => 'Paws::AppStream::ImagePermissions',
                                       'type' => 'AppStream_ImagePermissions'
                                     },
               'SharedAccountId' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'ImagePermissions' => 'imagePermissions',
                       'SharedAccountId' => 'sharedAccountId'
                     },
  'IsRequired' => {
                    'ImagePermissions' => 1,
                    'SharedAccountId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::SharedImagePermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::SharedImagePermissions object:

  $service_obj->Method(Att1 => { ImagePermissions => $value, ..., SharedAccountId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::SharedImagePermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->ImagePermissions

=head1 DESCRIPTION

Describes the permissions that are available to the specified AWS
account for a shared image.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImagePermissions => AppStream_ImagePermissions

  Describes the permissions for a shared image.


=head2 B<REQUIRED> SharedAccountId => Str

  The 12-digit identifier of the AWS account with which the image is
shared.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

