package Paws::S3::CreateBucketConfiguration;
  use Moose;
  has LocationConstraint => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CreateBucketConfiguration object:

  $service_obj->Method(Att1 => { LocationConstraint => $value, ..., LocationConstraint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CreateBucketConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->LocationConstraint

=head1 DESCRIPTION

The configuration information for the bucket.

=head1 ATTRIBUTES


=head2 LocationConstraint => Str

  Specifies the region where the bucket will be created. If you don't
specify a region, the bucket is created in US East (N. Virginia) Region
(us-east-1).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

