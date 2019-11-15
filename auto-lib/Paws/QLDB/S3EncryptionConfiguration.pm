package Paws::QLDB::S3EncryptionConfiguration;
  use Moose;
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has ObjectEncryptionType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::S3EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDB::S3EncryptionConfiguration object:

  $service_obj->Method(Att1 => { KmsKeyArn => $value, ..., ObjectEncryptionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDB::S3EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyArn

=head1 DESCRIPTION

The encryption settings that are used by a journal export job to write
data in an Amazon Simple Storage Service (Amazon S3) bucket.

=head1 ATTRIBUTES


=head2 KmsKeyArn => Str

  The Amazon Resource Name (ARN) for a customer master key (CMK) in AWS
Key Management Service (AWS KMS).

You must provide a C<KmsKeyArn> if you specify C<SSE_KMS> as the
C<ObjectEncryptionType>.

C<KmsKeyArn> is not required if you specify C<SSE_S3> as the
C<ObjectEncryptionType>.


=head2 B<REQUIRED> ObjectEncryptionType => Str

  The Amazon S3 object encryption type.

To learn more about server-side encryption options in Amazon S3, see
Protecting Data Using Server-Side Encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html)
in the I<Amazon S3 Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

