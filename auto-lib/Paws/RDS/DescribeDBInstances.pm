# Generated from callargs_class.tt

package Paws::RDS::DescribeDBInstances;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::RDS::Types qw/RDS_Filter/;
  has DBInstanceIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[RDS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBInstances');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::DBInstanceMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBInstancesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBInstanceIdentifier' => {
                                           'type' => 'Str'
                                         },
               'Filters' => {
                              'class' => 'Paws::RDS::Filter',
                              'type' => 'ArrayRef[RDS_Filter]'
                            },
               'MaxRecords' => {
                                 'type' => 'Int'
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

Paws::RDS::DescribeDBInstances - Arguments for method DescribeDBInstances on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBInstances on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBInstances.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB instance settings
    # This example lists settings for the specified DB instance.
    my $DBInstanceMessage =
      $rds->DescribeDBInstances( 'DBInstanceIdentifier' => 'mymysqlinstance' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBInstances>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The user-supplied instance identifier. If this parameter is specified,
information from only the specific DB instance is returned. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBInstance.

=back




=head2 Filters => ArrayRef[RDS_Filter]

A filter that specifies one or more DB instances to describe.

Supported filters:

=over

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs). The results list will only include information
about the DB instances associated with the DB clusters identified by
these ARNs.

=item *

C<db-instance-id> - Accepts DB instance identifiers and DB instance
Amazon Resource Names (ARNs). The results list will only include
information about the DB instances identified by these ARNs.

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBInstances> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBInstances in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

