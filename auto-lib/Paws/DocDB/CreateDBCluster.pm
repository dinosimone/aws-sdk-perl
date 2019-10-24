# Generated from callargs_class.tt

package Paws::DocDB::CreateDBCluster;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::DocDB::Types qw/DocDB_Tag/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has BackupRetentionPeriod => (is => 'ro', isa => Int, predicate => 1);
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DBSubnetGroupName => (is => 'ro', isa => Str, predicate => 1);
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has EnableCloudwatchLogsExports => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Engine => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MasterUsername => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MasterUserPassword => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has PreferredBackupWindow => (is => 'ro', isa => Str, predicate => 1);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str, predicate => 1);
  has StorageEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DocDB_Tag], predicate => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::CreateDBClusterResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateDBClusterResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StorageEncrypted' => {
                                       'type' => 'Bool'
                                     },
               'MasterUserPassword' => {
                                         'type' => 'Str'
                                       },
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'PreferredBackupWindow' => {
                                            'type' => 'Str'
                                          },
               'VpcSecurityGroupIds' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'DBSubnetGroupName' => {
                                        'type' => 'Str'
                                      },
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        },
               'MasterUsername' => {
                                     'type' => 'Str'
                                   },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Engine' => {
                             'type' => 'Str'
                           },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'Port' => {
                           'type' => 'Int'
                         },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                },
               'Tags' => {
                           'class' => 'Paws::DocDB::Tag',
                           'type' => 'ArrayRef[DocDB_Tag]'
                         },
               'EnableCloudwatchLogsExports' => {
                                                  'type' => 'ArrayRef[Str|Undef]'
                                                },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'BackupRetentionPeriod' => {
                                            'type' => 'Int'
                                          }
             },
  'IsRequired' => {
                    'MasterUserPassword' => 1,
                    'Engine' => 1,
                    'DBClusterIdentifier' => 1,
                    'MasterUsername' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBCluster - Arguments for method CreateDBCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBClusterResult = $rds->CreateDBCluster(
      DBClusterIdentifier         => 'MyString',
      Engine                      => 'MyString',
      MasterUserPassword          => 'MyString',
      MasterUsername              => 'MyString',
      AvailabilityZones           => [ 'MyString', ... ],    # OPTIONAL
      BackupRetentionPeriod       => 1,                      # OPTIONAL
      DBClusterParameterGroupName => 'MyString',             # OPTIONAL
      DBSubnetGroupName           => 'MyString',             # OPTIONAL
      DeletionProtection          => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],    # OPTIONAL
      EngineVersion               => 'MyString',             # OPTIONAL
      KmsKeyId                    => 'MyString',             # OPTIONAL
      Port                        => 1,                      # OPTIONAL
      PreferredBackupWindow       => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow  => 'MyString',             # OPTIONAL
      StorageEncrypted            => 1,                      # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                     # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],            # OPTIONAL
    );

    # Results:
    my $DBCluster = $CreateDBClusterResult->DBCluster;

    # Returns a L<Paws::DocDB::CreateDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Amazon EC2 Availability Zones that instances in the DB
cluster can be created in.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35.

=back




=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier. This parameter is stored as a lowercase
string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB cluster.

Constraints: Must match the name of an existing C<DBSubnetGroup>. Must
not be default.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Specifies whether this cluster can be deleted. If C<DeletionProtection>
is enabled, the cluster cannot be deleted unless it is modified and
C<DeletionProtection> is disabled. C<DeletionProtection> protects
clusters from being accidentally deleted.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of log types that need to be enabled for exporting to Amazon
CloudWatch Logs.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this DB cluster.

Valid values: C<docdb>



=head2 EngineVersion => Str

The version number of the database engine to use.



=head2 KmsKeyId => Str

The AWS KMS key identifier for an encrypted DB cluster.

The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
AWS KMS encryption key. If you are creating a DB cluster using the same
AWS account that owns the AWS KMS encryption key that is used to
encrypt the new DB cluster, you can use the AWS KMS key alias instead
of the ARN for the AWS KMS encryption key.

If an encryption key is not specified in C<KmsKeyId>:

=over

=item *

If C<ReplicationSourceIdentifier> identifies an encrypted source, then
Amazon DocumentDB uses the encryption key that is used to encrypt the
source. Otherwise, Amazon DocumentDB uses your default encryption key.

=item *

If the C<StorageEncrypted> parameter is C<true> and
C<ReplicationSourceIdentifier> is not specified, Amazon DocumentDB uses
your default encryption key.

=back

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.

If you create a replica of an encrypted DB cluster in another AWS
Region, you must set C<KmsKeyId> to a KMS key ID that is valid in the
destination AWS Region. This key is used to encrypt the replica in that
AWS Region.



=head2 B<REQUIRED> MasterUsername => Str

The name of the master user for the DB cluster.

Constraints:

=over

=item *

Must be from 1 to 16 letters or numbers.

=item *

The first character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back




=head2 B<REQUIRED> MasterUserPassword => Str

The password for the master database user. This password can contain
any printable ASCII character except forward slash (/), double quote
("), or the "at" symbol (@).

Constraints: Must contain from 8 to 41 characters.



=head2 Port => Int

The port number on which the instances in the DB cluster accept
connections.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region.

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 StorageEncrypted => Bool

Specifies whether the DB cluster is encrypted.



=head2 Tags => ArrayRef[DocDB_Tag]

The tags to be assigned to the DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

