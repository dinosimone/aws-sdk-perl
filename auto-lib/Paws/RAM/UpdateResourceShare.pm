
package Paws::RAM::UpdateResourceShare;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RAM::Types qw//;
  has AllowExternalPrincipals => (is => 'ro', isa => Bool, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has ResourceShareArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateResourceShare');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/updateresourceshare');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::UpdateResourceShareResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ResourceShareArn' => {
                                       'type' => 'Str'
                                     },
               'AllowExternalPrincipals' => {
                                              'type' => 'Bool'
                                            },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'ResourceShareArn' => 'resourceShareArn',
                       'AllowExternalPrincipals' => 'allowExternalPrincipals',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'ResourceShareArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::UpdateResourceShare - Arguments for method UpdateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method UpdateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $UpdateResourceShareResponse = $ram->UpdateResourceShare(
      ResourceShareArn        => 'MyString',
      AllowExternalPrincipals => 1,             # OPTIONAL
      ClientToken             => 'MyString',    # OPTIONAL
      Name                    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken   = $UpdateResourceShareResponse->ClientToken;
    my $ResourceShare = $UpdateResourceShareResponse->ResourceShare;

    # Returns a L<Paws::RAM::UpdateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/UpdateResourceShare>

=head1 ATTRIBUTES


=head2 AllowExternalPrincipals => Bool

Indicates whether principals outside your organization can be
associated with a resource share.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Name => Str

The name of the resource share.



=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

