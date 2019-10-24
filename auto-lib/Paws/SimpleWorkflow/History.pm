# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::History;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_HistoryEvent/;
  has Events => (is => 'ro', isa => ArrayRef[SimpleWorkflow_HistoryEvent], required => 1);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Events' => {
                             'class' => 'Paws::SimpleWorkflow::HistoryEvent',
                             'type' => 'ArrayRef[SimpleWorkflow_HistoryEvent]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'Events' => 'events'
                     },
  'IsRequired' => {
                    'Events' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::History

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[SimpleWorkflow_HistoryEvent]

The list of history events.


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 _request_id => Str


=cut

1;