
package Paws::RAM::GetResourceShareAssociations;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::RAM::Types qw//;
  has AssociationStatus => (is => 'ro', isa => Str, predicate => 1);
  has AssociationType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Principal => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, predicate => 1);
  has ResourceShareArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetResourceShareAssociations');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/getresourceshareassociations');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::GetResourceShareAssociationsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResourceShareArns' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'AssociationType' => {
                                      'type' => 'Str'
                                    },
               'Principal' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'AssociationStatus' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn',
                       'NextToken' => 'nextToken',
                       'ResourceShareArns' => 'resourceShareArns',
                       'AssociationType' => 'associationType',
                       'Principal' => 'principal',
                       'MaxResults' => 'maxResults',
                       'AssociationStatus' => 'associationStatus'
                     },
  'IsRequired' => {
                    'AssociationType' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareAssociations - Arguments for method GetResourceShareAssociations on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceShareAssociations on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method GetResourceShareAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceShareAssociations.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $GetResourceShareAssociationsResponse =
      $ram->GetResourceShareAssociations(
      AssociationType   => 'PRINCIPAL',
      AssociationStatus => 'ASSOCIATING',          # OPTIONAL
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyString',             # OPTIONAL
      Principal         => 'MyString',             # OPTIONAL
      ResourceArn       => 'MyString',             # OPTIONAL
      ResourceShareArns => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetResourceShareAssociationsResponse->NextToken;
    my $ResourceShareAssociations =
      $GetResourceShareAssociationsResponse->ResourceShareAssociations;

    # Returns a L<Paws::RAM::GetResourceShareAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/GetResourceShareAssociations>

=head1 ATTRIBUTES


=head2 AssociationStatus => Str

The status of the association.

Valid values are: C<"ASSOCIATING">, C<"ASSOCIATED">, C<"FAILED">, C<"DISASSOCIATING">, C<"DISASSOCIATED">

=head2 B<REQUIRED> AssociationType => Str

The association type.

Valid values are: C<"PRINCIPAL">, C<"RESOURCE">

=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 Principal => Str

The principal.



=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.



=head2 ResourceShareArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resource shares.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceShareAssociations in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

