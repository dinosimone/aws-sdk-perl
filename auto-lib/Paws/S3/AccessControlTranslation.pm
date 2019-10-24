# Generated from default/object.tt
package Paws::S3::AccessControlTranslation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Owner => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'Owner' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AccessControlTranslation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AccessControlTranslation object:

  $service_obj->Method(Att1 => { Owner => $value, ..., Owner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AccessControlTranslation object:

  $result = $service_obj->Method(...);
  $result->Att1->Owner

=head1 DESCRIPTION

A container for information about access control for replicas.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Owner => Str

  Specifies the replica ownership. For default and valid values, see PUT
bucket replication
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html)
in the I<Amazon Simple Storage Service API Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

