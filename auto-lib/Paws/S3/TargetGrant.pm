package Paws::S3::TargetGrant;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_Grantee/;
  has Grantee => (is => 'ro', isa => S3_Grantee);
  has Permission => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Permission' => {
                                 'type' => 'Str'
                               },
               'Grantee' => {
                              'class' => 'Paws::S3::Grantee',
                              'type' => 'S3_Grantee'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::TargetGrant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::TargetGrant object:

  $service_obj->Method(Att1 => { Grantee => $value, ..., Permission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::TargetGrant object:

  $result = $service_obj->Method(...);
  $result->Att1->Grantee

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Grantee => S3_Grantee

  


=head2 Permission => Str

  Logging permissions assigned to the Grantee for the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

