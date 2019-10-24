# Generated from callargs_class.tt

package Paws::DocDB::DescribeDBClusterSnapshots;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::DocDB::Types qw/DocDB_Filter/;
  has DBClusterIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[DocDB_Filter], predicate => 1);
  has IncludePublic => (is => 'ro', isa => Bool, predicate => 1);
  has IncludeShared => (is => 'ro', isa => Bool, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has SnapshotType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBClusterSnapshots');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::DBClusterSnapshotMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBClusterSnapshotsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterSnapshotIdentifier' => {
                                                  'type' => 'Str'
                                                },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'IncludeShared' => {
                                    'type' => 'Bool'
                                  },
               'IncludePublic' => {
                                    'type' => 'Bool'
                                  },
               'SnapshotType' => {
                                   'type' => 'Str'
                                 },
               'Filters' => {
                              'class' => 'Paws::DocDB::Filter',
                              'type' => 'ArrayRef[DocDB_Filter]'
                            },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'Marker' => {
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

Paws::DocDB::DescribeDBClusterSnapshots - Arguments for method DescribeDBClusterSnapshots on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshots on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshots.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBClusterSnapshotMessage = $rds->DescribeDBClusterSnapshots(
      DBClusterIdentifier         => 'MyString',    # OPTIONAL
      DBClusterSnapshotIdentifier => 'MyString',    # OPTIONAL
      Filters                     => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                            # OPTIONAL
      IncludePublic => 1,                           # OPTIONAL
      IncludeShared => 1,                           # OPTIONAL
      Marker        => 'MyString',                  # OPTIONAL
      MaxRecords    => 1,                           # OPTIONAL
      SnapshotType  => 'MyString',                  # OPTIONAL
    );

    # Results:
    my $DBClusterSnapshots = $DBClusterSnapshotMessage->DBClusterSnapshots;
    my $Marker             = $DBClusterSnapshotMessage->Marker;

    # Returns a L<Paws::DocDB::DBClusterSnapshotMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterSnapshots>

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

The ID of the DB cluster to retrieve the list of DB cluster snapshots
for. This parameter can't be used with the
C<DBClusterSnapshotIdentifier> parameter. This parameter is not case
sensitive.

Constraints:

=over

=item *

If provided, must match the identifier of an existing C<DBCluster>.

=back




=head2 DBClusterSnapshotIdentifier => Str

A specific DB cluster snapshot identifier to describe. This parameter
can't be used with the C<DBClusterIdentifier> parameter. This value is
stored as a lowercase string.

Constraints:

=over

=item *

If provided, must match the identifier of an existing
C<DBClusterSnapshot>.

=item *

If this identifier is for an automated snapshot, the C<SnapshotType>
parameter must also be specified.

=back




=head2 Filters => ArrayRef[DocDB_Filter]

This parameter is not currently supported.



=head2 IncludePublic => Bool

Set to C<true> to include manual DB cluster snapshots that are public
and can be copied or restored by any AWS account, and otherwise
C<false>. The default is C<false>.



=head2 IncludeShared => Bool

Set to C<true> to include shared manual DB cluster snapshots from other
AWS accounts that this AWS account has been given permission to copy or
restore, and otherwise C<false>. The default is C<false>.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token (marker) is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SnapshotType => Str

The type of DB cluster snapshots to be returned. You can specify one of
the following values:

=over

=item *

C<automated> - Return all DB cluster snapshots that Amazon DocumentDB
has automatically created for your AWS account.

=item *

C<manual> - Return all DB cluster snapshots that you have manually
created for your AWS account.

=item *

C<shared> - Return all manual DB cluster snapshots that have been
shared to your AWS account.

=item *

C<public> - Return all DB cluster snapshots that have been marked as
public.

=back

If you don't specify a C<SnapshotType> value, then both automated and
manual DB cluster snapshots are returned. You can include shared DB
cluster snapshots with these results by setting the C<IncludeShared>
parameter to C<true>. You can include public DB cluster snapshots with
these results by setting the C<IncludePublic> parameter to C<true>.

The C<IncludeShared> and C<IncludePublic> parameters don't apply for
C<SnapshotType> values of C<manual> or C<automated>. The
C<IncludePublic> parameter doesn't apply when C<SnapshotType> is set to
C<shared>. The C<IncludeShared> parameter doesn't apply when
C<SnapshotType> is set to C<public>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshots in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

