# Generated from default/object.tt
package Paws::CloudDirectory::BatchListAttachedIndicesResponse;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_IndexAttachment/;
  has IndexAttachments => (is => 'ro', isa => ArrayRef[CloudDirectory_IndexAttachment]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IndexAttachments' => {
                                       'class' => 'Paws::CloudDirectory::IndexAttachment',
                                       'type' => 'ArrayRef[CloudDirectory_IndexAttachment]'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListAttachedIndicesResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListAttachedIndicesResponse object:

  $service_obj->Method(Att1 => { IndexAttachments => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListAttachedIndicesResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexAttachments

=head1 DESCRIPTION

Represents the output of a ListAttachedIndices response operation.

=head1 ATTRIBUTES


=head2 IndexAttachments => ArrayRef[CloudDirectory_IndexAttachment]

  The indices attached to the specified object.


=head2 NextToken => Str

  The pagination token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

