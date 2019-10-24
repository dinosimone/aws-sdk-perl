# Generated from default/object.tt
package Paws::WorkDocs::DocumentMetadata;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::WorkDocs::Types qw/WorkDocs_DocumentVersionMetadata/;
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has CreatorId => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LatestVersionMetadata => (is => 'ro', isa => WorkDocs_DocumentVersionMetadata);
  has ModifiedTimestamp => (is => 'ro', isa => Str);
  has ParentFolderId => (is => 'ro', isa => Str);
  has ResourceState => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceState' => {
                                    'type' => 'Str'
                                  },
               'Id' => {
                         'type' => 'Str'
                       },
               'ParentFolderId' => {
                                     'type' => 'Str'
                                   },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     },
               'CreatorId' => {
                                'type' => 'Str'
                              },
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LatestVersionMetadata' => {
                                            'class' => 'Paws::WorkDocs::DocumentVersionMetadata',
                                            'type' => 'WorkDocs_DocumentVersionMetadata'
                                          },
               'ModifiedTimestamp' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DocumentMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::DocumentMetadata object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., ResourceState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::DocumentMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

Describes the document.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

  The time when the document was created.


=head2 CreatorId => Str

  The ID of the creator.


=head2 Id => Str

  The ID of the document.


=head2 Labels => ArrayRef[Str|Undef]

  List of labels on the document.


=head2 LatestVersionMetadata => WorkDocs_DocumentVersionMetadata

  The latest version of the document.


=head2 ModifiedTimestamp => Str

  The time when the document was updated.


=head2 ParentFolderId => Str

  The ID of the parent folder.


=head2 ResourceState => Str

  The resource state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

