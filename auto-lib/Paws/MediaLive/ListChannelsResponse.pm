
package Paws::MediaLive::ListChannelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_ChannelSummary/;
  has Channels => (is => 'ro', isa => ArrayRef[MediaLive_ChannelSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Channels' => {
                               'class' => 'Paws::MediaLive::ChannelSummary',
                               'type' => 'ArrayRef[MediaLive_ChannelSummary]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Channels' => 'channels',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[MediaLive_ChannelSummary]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

