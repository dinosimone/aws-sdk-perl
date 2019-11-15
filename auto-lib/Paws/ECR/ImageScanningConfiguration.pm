package Paws::ECR::ImageScanningConfiguration;
  use Moose;
  has ScanOnPush => (is => 'ro', isa => 'Bool', request_name => 'scanOnPush', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageScanningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageScanningConfiguration object:

  $service_obj->Method(Att1 => { ScanOnPush => $value, ..., ScanOnPush => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageScanningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ScanOnPush

=head1 DESCRIPTION

The image scanning configuration for a repository.

=head1 ATTRIBUTES


=head2 ScanOnPush => Bool

  The setting that determines whether images are scanned after being
pushed to a repository. If set to C<true>, images will be scanned after
being pushed. If this parameter is not specified, it will default to
C<false> and images will not be scanned unless a scan is manually
started with the StartImageScan API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
