# Generated from callargs_class.tt

package Paws::DocDB::DescribeEvents;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::DocDB::Types qw/DocDB_Filter/;
  has Duration => (is => 'ro', isa => Int, predicate => 1);
  has EndTime => (is => 'ro', isa => Str, predicate => 1);
  has EventCategories => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[DocDB_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has SourceIdentifier => (is => 'ro', isa => Str, predicate => 1);
  has SourceType => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::EventsMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeEventsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventCategories' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'class' => 'Paws::DocDB::Filter',
                              'type' => 'ArrayRef[DocDB_Filter]'
                            },
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Duration' => {
                               'type' => 'Int'
                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               'SourceIdentifier' => {
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

Paws::DocDB::DescribeEvents - Arguments for method DescribeEvents on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $EventsMessage = $rds->DescribeEvents(
      Duration        => 1,                        # OPTIONAL
      EndTime         => '1970-01-01T01:00:00',    # OPTIONAL
      EventCategories => [ 'MyString', ... ],      # OPTIONAL
      Filters         => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                           # OPTIONAL
      Marker           => 'MyString',              # OPTIONAL
      MaxRecords       => 1,                       # OPTIONAL
      SourceIdentifier => 'MyString',              # OPTIONAL
      SourceType       => 'db-instance',           # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',   # OPTIONAL
    );

    # Results:
    my $Events = $EventsMessage->Events;
    my $Marker = $EventsMessage->Marker;

    # Returns a L<Paws::DocDB::EventsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEvents>

=head1 ATTRIBUTES


=head2 Duration => Int

The number of minutes to retrieve events for.

Default: 60



=head2 EndTime => Str

The end of the time interval for which to retrieve events, specified in
ISO 8601 format.

Example: 2009-07-08T18:00Z



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories that trigger notifications for an event
notification subscription.



=head2 Filters => ArrayRef[DocDB_Filter]

This parameter is not currently supported.



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



=head2 SourceIdentifier => Str

The identifier of the event source for which events are returned. If
not specified, then all sources are included in the response.

Constraints:

=over

=item *

If C<SourceIdentifier> is provided, C<SourceType> must also be
provided.

=item *

If the source type is C<DBInstance>, a C<DBInstanceIdentifier> must be
provided.

=item *

If the source type is C<DBSecurityGroup>, a C<DBSecurityGroupName> must
be provided.

=item *

If the source type is C<DBParameterGroup>, a C<DBParameterGroupName>
must be provided.

=item *

If the source type is C<DBSnapshot>, a C<DBSnapshotIdentifier> must be
provided.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 SourceType => Str

The event source to retrieve events for. If no value is specified, all
events are returned.

Valid values are: C<"db-instance">, C<"db-parameter-group">, C<"db-security-group">, C<"db-snapshot">, C<"db-cluster">, C<"db-cluster-snapshot">

=head2 StartTime => Str

The beginning of the time interval to retrieve events for, specified in
ISO 8601 format.

Example: 2009-07-08T18:00Z




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

