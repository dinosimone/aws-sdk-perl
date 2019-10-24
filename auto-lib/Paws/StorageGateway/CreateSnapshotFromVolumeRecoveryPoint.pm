# Generated from json/callargs_class.tt

package Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has SnapshotDescription => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VolumeARN => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeARN' => {
                                'type' => 'Str'
                              },
               'SnapshotDescription' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'VolumeARN' => 1,
                    'SnapshotDescription' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint - Arguments for method CreateSnapshotFromVolumeRecoveryPoint on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshotFromVolumeRecoveryPoint on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateSnapshotFromVolumeRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshotFromVolumeRecoveryPoint.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To create a snapshot of a gateway volume
    # Initiates a snapshot of a gateway from a volume recovery point.
    my $CreateSnapshotFromVolumeRecoveryPointOutput =
      $storagegateway->CreateSnapshotFromVolumeRecoveryPoint(
      'SnapshotDescription' =>
        'My root volume snapshot as of 2017-06-30T10:10:10.000Z',
      'VolumeARN' =>
'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB'
      );

    # Results:
    my $SnapshotId = $CreateSnapshotFromVolumeRecoveryPointOutput->SnapshotId;
    my $VolumeARN  = $CreateSnapshotFromVolumeRecoveryPointOutput->VolumeARN;
    my $VolumeRecoveryPointTime =
      $CreateSnapshotFromVolumeRecoveryPointOutput->VolumeRecoveryPointTime;

# Returns a L<Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateSnapshotFromVolumeRecoveryPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotDescription => Str

Textual description of the snapshot that appears in the Amazon EC2
console, Elastic Block Store snapshots panel in the B<Description>
field, and in the AWS Storage Gateway snapshot B<Details> pane,
B<Description> field



=head2 B<REQUIRED> VolumeARN => Str

The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
DescribeStorediSCSIVolumes operation to return to retrieve the
TargetARN for specified VolumeARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshotFromVolumeRecoveryPoint in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

