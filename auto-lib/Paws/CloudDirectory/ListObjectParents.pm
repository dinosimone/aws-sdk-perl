
package Paws::CloudDirectory::ListObjectParents;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has ConsistencyLevel => (is => 'ro', isa => Str, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IncludeAllLinksToEachParent => (is => 'ro', isa => Bool, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListObjectParents');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/parent');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::ListObjectParentsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConsistencyLevel' => {
                                       'type' => 'Str'
                                     },
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'IncludeAllLinksToEachParent' => {
                                                  'type' => 'Bool'
                                                }
             },
  'ParamInHeader' => {
                       'ConsistencyLevel' => 'x-amz-consistency-level',
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'DirectoryArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectParents - Arguments for method ListObjectParents on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectParents on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListObjectParents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectParents.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListObjectParentsResponse = $clouddirectory->ListObjectParents(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel            => 'SERIALIZABLE',    # OPTIONAL
      IncludeAllLinksToEachParent => 1,                 # OPTIONAL
      MaxResults                  => 1,                 # OPTIONAL
      NextToken                   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListObjectParentsResponse->NextToken;
    my $ParentLinks = $ListObjectParentsResponse->ParentLinks;
    my $Parents     = $ListObjectParentsResponse->Parents;

    # Returns a L<Paws::CloudDirectory::ListObjectParentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListObjectParents>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the object resides. For more information, see arns.



=head2 IncludeAllLinksToEachParent => Bool

When set to True, returns all ListObjectParentsResponse$ParentLinks.
There could be multiple links between a parent-child pair.



=head2 MaxResults => Int

The maximum number of items to be retrieved in a single call. This is
an approximate number.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

The reference that identifies the object for which parent objects are
being listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectParents in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

