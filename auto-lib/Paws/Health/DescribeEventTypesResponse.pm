# Generated from json/callresult_class.tt

package Paws::Health::DescribeEventTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Health::Types qw/Health_EventType/;
  has EventTypes => (is => 'ro', isa => ArrayRef[Health_EventType]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventTypes' => {
                                 'class' => 'Paws::Health::EventType',
                                 'type' => 'ArrayRef[Health_EventType]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'EventTypes' => 'eventTypes'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventTypesResponse

=head1 ATTRIBUTES


=head2 EventTypes => ArrayRef[Health_EventType]

A list of event types that match the filter criteria. Event types have
a category (C<issue>, C<accountNotification>, or C<scheduledChange>), a
service (for example, C<EC2>, C<RDS>, C<DATAPIPELINE>, C<BILLING>), and
a code (in the format C<AWS_I<SERVICE>_I<DESCRIPTION> >; for example,
C<AWS_EC2_SYSTEM_MAINTENANCE_EVENT>).


=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.


=head2 _request_id => Str


=cut

1;