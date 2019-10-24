
package Paws::SecurityHub::DisassociateFromMasterAccount;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociateFromMasterAccount');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/master/disassociate');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecurityHub::DisassociateFromMasterAccountResponse');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DisassociateFromMasterAccount - Arguments for method DisassociateFromMasterAccount on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateFromMasterAccount on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DisassociateFromMasterAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateFromMasterAccount.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DisassociateFromMasterAccountResponse =
      $securityhub->DisassociateFromMasterAccount();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DisassociateFromMasterAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateFromMasterAccount in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

