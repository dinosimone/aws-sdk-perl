# Generated from callargs_class.tt

package Paws::Neptune::DescribeDBParameterGroups;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Neptune::Types qw/Neptune_Filter/;
  has DBParameterGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[Neptune_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDBParameterGroups');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Neptune::DBParameterGroupsMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeDBParameterGroupsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBParameterGroupName' => {
                                           'type' => 'Str'
                                         },
               'Filters' => {
                              'class' => 'Paws::Neptune::Filter',
                              'type' => 'ArrayRef[Neptune_Filter]'
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

Paws::Neptune::DescribeDBParameterGroups - Arguments for method DescribeDBParameterGroups on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBParameterGroups on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeDBParameterGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBParameterGroups.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DBParameterGroupsMessage = $rds->DescribeDBParameterGroups(
      DBParameterGroupName => 'MyString',    # OPTIONAL
      Filters              => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                     # OPTIONAL
      Marker     => 'MyString',              # OPTIONAL
      MaxRecords => 1,                       # OPTIONAL
    );

    # Results:
    my $DBParameterGroups = $DBParameterGroupsMessage->DBParameterGroups;
    my $Marker            = $DBParameterGroupsMessage->Marker;

    # Returns a L<Paws::Neptune::DBParameterGroupsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBParameterGroups>

=head1 ATTRIBUTES


=head2 DBParameterGroupName => Str

The name of a specific DB parameter group to return details for.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 Filters => ArrayRef[Neptune_Filter]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBParameterGroups> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBParameterGroups in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

