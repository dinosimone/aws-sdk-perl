# Generated from default/object.tt
package Paws::ACM::DomainValidation;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ACM::Types qw/ACM_ResourceRecord/;
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has ResourceRecord => (is => 'ro', isa => ACM_ResourceRecord);
  has ValidationDomain => (is => 'ro', isa => Str);
  has ValidationEmails => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ValidationMethod => (is => 'ro', isa => Str);
  has ValidationStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidationMethod' => {
                                       'type' => 'Str'
                                     },
               'ResourceRecord' => {
                                     'class' => 'Paws::ACM::ResourceRecord',
                                     'type' => 'ACM_ResourceRecord'
                                   },
               'ValidationEmails' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ValidationStatus' => {
                                       'type' => 'Str'
                                     },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'ValidationDomain' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::DomainValidation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::DomainValidation object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., ValidationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::DomainValidation object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Contains information about the validation of each domain name in the
certificate.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  A fully qualified domain name (FQDN) in the certificate. For example,
C<www.example.com> or C<example.com>.


=head2 ResourceRecord => ACM_ResourceRecord

  Contains the CNAME record that you add to your DNS database for domain
validation. For more information, see Use DNS to Validate Domain
Ownership
(https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html).


=head2 ValidationDomain => Str

  The domain name that ACM used to send domain validation emails.


=head2 ValidationEmails => ArrayRef[Str|Undef]

  A list of email addresses that ACM used to send domain validation
emails.


=head2 ValidationMethod => Str

  Specifies the domain validation method.


=head2 ValidationStatus => Str

  The validation status of the domain name. This can be one of the
following values:

=over

=item *

C<PENDING_VALIDATION>

=item *

C<SUCCESS>

=item *

C<FAILED>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

