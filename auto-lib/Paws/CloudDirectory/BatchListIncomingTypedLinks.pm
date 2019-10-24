# Generated from default/object.tt
package Paws::CloudDirectory::BatchListIncomingTypedLinks;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference CloudDirectory_TypedLinkAttributeRange CloudDirectory_TypedLinkSchemaAndFacetName/;
  has FilterAttributeRanges => (is => 'ro', isa => ArrayRef[CloudDirectory_TypedLinkAttributeRange]);
  has FilterTypedLink => (is => 'ro', isa => CloudDirectory_TypedLinkSchemaAndFacetName);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FilterAttributeRanges' => {
                                            'class' => 'Paws::CloudDirectory::TypedLinkAttributeRange',
                                            'type' => 'ArrayRef[CloudDirectory_TypedLinkAttributeRange]'
                                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FilterTypedLink' => {
                                      'class' => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName',
                                      'type' => 'CloudDirectory_TypedLinkSchemaAndFacetName'
                                    },
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'IsRequired' => {
                    'ObjectReference' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListIncomingTypedLinks

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListIncomingTypedLinks object:

  $service_obj->Method(Att1 => { FilterAttributeRanges => $value, ..., ObjectReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListIncomingTypedLinks object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterAttributeRanges

=head1 DESCRIPTION

Returns a paginated list of all the incoming TypedLinkSpecifier
information for an object inside a BatchRead operation. For more
information, see ListIncomingTypedLinks and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 FilterAttributeRanges => ArrayRef[CloudDirectory_TypedLinkAttributeRange]

  Provides range filters for multiple attributes. When providing ranges
to typed link selection, any inexact ranges must be specified at the
end. Any attributes that do not have a range specified are presumed to
match the entire range.


=head2 FilterTypedLink => CloudDirectory_TypedLinkSchemaAndFacetName

  Filters are interpreted in the order of the attributes on the typed
link facet, not the order in which they are supplied to any API calls.


=head2 MaxResults => Int

  The maximum number of results to retrieve.


=head2 NextToken => Str

  The pagination token.


=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

  The reference that identifies the object whose attributes will be
listed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

