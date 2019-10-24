# Generated from default/object.tt
package Paws::ACMPCA::CertificateAuthority;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACMPCA::Types qw/ACMPCA_CertificateAuthorityConfiguration ACMPCA_RevocationConfiguration/;
  has Arn => (is => 'ro', isa => Str);
  has CertificateAuthorityConfiguration => (is => 'ro', isa => ACMPCA_CertificateAuthorityConfiguration);
  has CreatedAt => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LastStateChangeAt => (is => 'ro', isa => Str);
  has NotAfter => (is => 'ro', isa => Str);
  has NotBefore => (is => 'ro', isa => Str);
  has RestorableUntil => (is => 'ro', isa => Str);
  has RevocationConfiguration => (is => 'ro', isa => ACMPCA_RevocationConfiguration);
  has Serial => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestorableUntil' => {
                                      'type' => 'Str'
                                    },
               'NotAfter' => {
                               'type' => 'Str'
                             },
               'LastStateChangeAt' => {
                                        'type' => 'Str'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               'Serial' => {
                             'type' => 'Str'
                           },
               'NotBefore' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'RevocationConfiguration' => {
                                              'class' => 'Paws::ACMPCA::RevocationConfiguration',
                                              'type' => 'ACMPCA_RevocationConfiguration'
                                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'CertificateAuthorityConfiguration' => {
                                                        'class' => 'Paws::ACMPCA::CertificateAuthorityConfiguration',
                                                        'type' => 'ACMPCA_CertificateAuthorityConfiguration'
                                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CertificateAuthority

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::CertificateAuthority object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::CertificateAuthority object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about your private certificate authority (CA).
Your private CA can issue and revoke X.509 digital certificates.
Digital certificates verify that the entity named in the certificate
B<Subject> field owns or controls the public key contained in the
B<Subject Public Key Info> field. Call the CreateCertificateAuthority
action to create your private CA. You must then call the
GetCertificateAuthorityCertificate action to retrieve a private CA
certificate signing request (CSR). Sign the CSR with your ACM Private
CA-hosted or on-premises root or subordinate CA certificate. Call the
ImportCertificateAuthorityCertificate action to import the signed
certificate into AWS Certificate Manager (ACM).

=head1 ATTRIBUTES


=head2 Arn => Str

  Amazon Resource Name (ARN) for your private certificate authority (CA).
The format is C< I<12345678-1234-1234-1234-123456789012> >.


=head2 CertificateAuthorityConfiguration => ACMPCA_CertificateAuthorityConfiguration

  Your private CA configuration.


=head2 CreatedAt => Str

  Date and time at which your private CA was created.


=head2 FailureReason => Str

  Reason the request to create your private CA failed.


=head2 LastStateChangeAt => Str

  Date and time at which your private CA was last updated.


=head2 NotAfter => Str

  Date and time after which your private CA certificate is not valid.


=head2 NotBefore => Str

  Date and time before which your private CA certificate is not valid.


=head2 RestorableUntil => Str

  The period during which a deleted CA can be restored. For more
information, see the C<PermanentDeletionTimeInDays> parameter of the
DeleteCertificateAuthorityRequest action.


=head2 RevocationConfiguration => ACMPCA_RevocationConfiguration

  Information about the certificate revocation list (CRL) created and
maintained by your private CA.


=head2 Serial => Str

  Serial number of your private CA.


=head2 Status => Str

  Status of your private CA.


=head2 Type => Str

  Type of your private CA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

