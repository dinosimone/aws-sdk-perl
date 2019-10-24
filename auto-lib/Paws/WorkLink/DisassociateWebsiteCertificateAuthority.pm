
package Paws::WorkLink::DisassociateWebsiteCertificateAuthority;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has FleetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WebsiteCaId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociateWebsiteCertificateAuthority');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/disassociateWebsiteCertificateAuthority');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkLink::DisassociateWebsiteCertificateAuthorityResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetArn' => {
                               'type' => 'Str'
                             },
               'WebsiteCaId' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'FleetArn' => 1,
                    'WebsiteCaId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DisassociateWebsiteCertificateAuthority - Arguments for method DisassociateWebsiteCertificateAuthority on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateWebsiteCertificateAuthority on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DisassociateWebsiteCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateWebsiteCertificateAuthority.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DisassociateWebsiteCertificateAuthorityResponse =
      $worklink->DisassociateWebsiteCertificateAuthority(
      FleetArn    => 'MyFleetArn',
      WebsiteCaId => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DisassociateWebsiteCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.



=head2 B<REQUIRED> WebsiteCaId => Str

A unique identifier for the CA.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateWebsiteCertificateAuthority in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

