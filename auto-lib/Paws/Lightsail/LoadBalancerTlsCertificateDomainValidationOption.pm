# Generated from default/object.tt
package Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has DomainName => (is => 'ro', isa => Str);
  has ValidationStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidationStatus' => {
                                       'type' => 'Str'
                                     },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ValidationStatus' => 'validationStatus',
                       'DomainName' => 'domainName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., ValidationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Contains information about the domain names on an SSL/TLS certificate
that you will use to validate domain ownership.

=head1 ATTRIBUTES


=head2 DomainName => Str

  The fully qualified domain name in the certificate request.


=head2 ValidationStatus => Str

  The status of the domain validation. Valid values are listed below.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

