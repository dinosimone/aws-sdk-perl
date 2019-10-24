
package Paws::EC2::ModifySnapshotAttribute;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_CreateVolumePermissionModifications/;
  has Attribute => (is => 'ro', isa => Str, predicate => 1);
  has CreateVolumePermission => (is => 'ro', isa => EC2_CreateVolumePermissionModifications, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has GroupNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has OperationType => (is => 'ro', isa => Str, predicate => 1);
  has SnapshotId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifySnapshotAttribute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperationType' => {
                                    'type' => 'Str'
                                  },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'GroupNames' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'CreateVolumePermission' => {
                                             'class' => 'Paws::EC2::CreateVolumePermissionModifications',
                                             'type' => 'EC2_CreateVolumePermissionModifications'
                                           },
               'Attribute' => {
                                'type' => 'Str'
                              },
               'UserIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'GroupNames' => 'UserGroup',
                       'UserIds' => 'UserId'
                     },
  'IsRequired' => {
                    'SnapshotId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySnapshotAttribute - Arguments for method ModifySnapshotAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySnapshotAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifySnapshotAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySnapshotAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify a snapshot attribute
    # This example modifies snapshot ``snap-1234567890abcdef0`` to remove the
    # create volume permission for a user with the account ID ``123456789012``.
    # If the command succeeds, no output is returned.
    $ec2->ModifySnapshotAttribute(
      'Attribute'     => 'createVolumePermission',
      'OperationType' => 'remove',
      'SnapshotId'    => 'snap-1234567890abcdef0',
      'UserIds'       => [123456789012]
    );

    # To make a snapshot public
    # This example makes the snapshot ``snap-1234567890abcdef0`` public.
    $ec2->ModifySnapshotAttribute(
      'Attribute'     => 'createVolumePermission',
      'GroupNames'    => ['all'],
      'OperationType' => 'add',
      'SnapshotId'    => 'snap-1234567890abcdef0'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifySnapshotAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The snapshot attribute to modify. Only volume creation permissions can
be modified.

Valid values are: C<"productCodes">, C<"createVolumePermission">

=head2 CreateVolumePermission => EC2_CreateVolumePermissionModifications

A JSON representation of the snapshot attribute modification.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GroupNames => ArrayRef[Str|Undef]

The group to modify for the snapshot.



=head2 OperationType => Str

The type of operation to perform to the attribute.

Valid values are: C<"add">, C<"remove">

=head2 B<REQUIRED> SnapshotId => Str

The ID of the snapshot.



=head2 UserIds => ArrayRef[Str|Undef]

The account ID to modify for the snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySnapshotAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

