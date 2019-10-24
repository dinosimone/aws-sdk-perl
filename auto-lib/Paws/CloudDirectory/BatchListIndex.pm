# Generated from default/object.tt
package Paws::CloudDirectory::BatchListIndex;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectAttributeRange CloudDirectory_ObjectReference/;
  has IndexReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has RangesOnIndexedValues => (is => 'ro', isa => ArrayRef[CloudDirectory_ObjectAttributeRange]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IndexReference' => {
                                     'class' => 'Paws::CloudDirectory::ObjectReference',
                                     'type' => 'CloudDirectory_ObjectReference'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'RangesOnIndexedValues' => {
                                            'class' => 'Paws::CloudDirectory::ObjectAttributeRange',
                                            'type' => 'ArrayRef[CloudDirectory_ObjectAttributeRange]'
                                          }
             },
  'IsRequired' => {
                    'IndexReference' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListIndex object:

  $service_obj->Method(Att1 => { IndexReference => $value, ..., RangesOnIndexedValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexReference

=head1 DESCRIPTION

Lists objects attached to the specified index inside a BatchRead
operation. For more information, see ListIndex and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexReference => CloudDirectory_ObjectReference

  The reference to the index to list.


=head2 MaxResults => Int

  The maximum number of results to retrieve.


=head2 NextToken => Str

  The pagination token.


=head2 RangesOnIndexedValues => ArrayRef[CloudDirectory_ObjectAttributeRange]

  Specifies the ranges of indexed values that you want to query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

