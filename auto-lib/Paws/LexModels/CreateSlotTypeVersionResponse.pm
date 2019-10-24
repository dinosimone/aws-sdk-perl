
package Paws::LexModels::CreateSlotTypeVersionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_EnumerationValue/;
  has Checksum => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EnumerationValues => (is => 'ro', isa => ArrayRef[LexModels_EnumerationValue]);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ValueSelectionStrategy => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValueSelectionStrategy' => {
                                             'type' => 'Str'
                                           },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'Version' => {
                              'type' => 'Str'
                            },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EnumerationValues' => {
                                        'class' => 'Paws::LexModels::EnumerationValue',
                                        'type' => 'ArrayRef[LexModels_EnumerationValue]'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Checksum' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ValueSelectionStrategy' => 'valueSelectionStrategy',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'CreatedDate' => 'createdDate',
                       'Version' => 'version',
                       'EnumerationValues' => 'enumerationValues',
                       'Description' => 'description',
                       'Name' => 'name',
                       'Checksum' => 'checksum'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateSlotTypeVersionResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the C<$LATEST> version of the slot type.


=head2 CreatedDate => Str

The date that the slot type was created.


=head2 Description => Str

A description of the slot type.


=head2 EnumerationValues => ArrayRef[LexModels_EnumerationValue]

A list of C<EnumerationValue> objects that defines the values that the
slot type can take.


=head2 LastUpdatedDate => Str

The date that the slot type was updated. When you create a resource,
the creation date and last update date are the same.


=head2 Name => Str

The name of the slot type.


=head2 ValueSelectionStrategy => Str

The strategy that Amazon Lex uses to determine the value of the slot.
For more information, see PutSlotType.

Valid values are: C<"ORIGINAL_VALUE">, C<"TOP_RESOLUTION">
=head2 Version => Str

The version assigned to the new slot type version.


=head2 _request_id => Str


=cut

