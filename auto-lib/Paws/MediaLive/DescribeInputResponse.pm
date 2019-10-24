
package Paws::MediaLive::DescribeInputResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_InputSource MediaLive_Tags MediaLive_MediaConnectFlow MediaLive_InputDestination/;
  has Arn => (is => 'ro', isa => Str);
  has AttachedChannels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_InputDestination]);
  has Id => (is => 'ro', isa => Str);
  has InputClass => (is => 'ro', isa => Str);
  has MediaConnectFlows => (is => 'ro', isa => ArrayRef[MediaLive_MediaConnectFlow]);
  has Name => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Sources => (is => 'ro', isa => ArrayRef[MediaLive_InputSource]);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has Type => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'State' => {
                            'type' => 'Str'
                          },
               'AttachedChannels' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Sources' => {
                              'class' => 'Paws::MediaLive::InputSource',
                              'type' => 'ArrayRef[MediaLive_InputSource]'
                            },
               'InputClass' => {
                                 'type' => 'Str'
                               },
               'Type' => {
                           'type' => 'Str'
                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Destinations' => {
                                   'class' => 'Paws::MediaLive::InputDestination',
                                   'type' => 'ArrayRef[MediaLive_InputDestination]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'MediaConnectFlows' => {
                                        'class' => 'Paws::MediaLive::MediaConnectFlow',
                                        'type' => 'ArrayRef[MediaLive_MediaConnectFlow]'
                                      },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'State' => 'state',
                       'AttachedChannels' => 'attachedChannels',
                       'Sources' => 'sources',
                       'InputClass' => 'inputClass',
                       'Type' => 'type',
                       'RoleArn' => 'roleArn',
                       'Destinations' => 'destinations',
                       'Arn' => 'arn',
                       'MediaConnectFlows' => 'mediaConnectFlows',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'SecurityGroups' => 'securityGroups'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Unique ARN of the input (generated, immutable).


=head2 AttachedChannels => ArrayRef[Str|Undef]

A list of channel IDs that that input is attached to (currently an
input can only be attached to one channel).


=head2 Destinations => ArrayRef[MediaLive_InputDestination]

A list of the destinations of the input (PUSH-type).


=head2 Id => Str

The generated ID of the input (unique for user account, immutable).


=head2 InputClass => Str

STANDARD - MediaLive expects two sources to be connected to this input.
If the channel is also STANDARD, both sources will be ingested. If the
channel is SINGLE_PIPELINE, only the first source will be ingested; the
second source will always be ignored, even if the first source fails.
SINGLE_PIPELINE - You can connect only one source to this input. If the
ChannelClass is also SINGLE_PIPELINE, this value is valid. If the
ChannelClass is STANDARD, this value is not valid because the channel
requires two sources in the input.

Valid values are: C<"STANDARD">, C<"SINGLE_PIPELINE">
=head2 MediaConnectFlows => ArrayRef[MediaLive_MediaConnectFlow]

A list of MediaConnect Flows for this input.


=head2 Name => Str

The user-assigned name (This is a mutable value).


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.


=head2 SecurityGroups => ArrayRef[Str|Undef]

A list of IDs for all the Input Security Groups attached to the input.


=head2 Sources => ArrayRef[MediaLive_InputSource]

A list of the sources of the input (PULL-type).


=head2 State => Str



Valid values are: C<"CREATING">, C<"DETACHED">, C<"ATTACHED">, C<"DELETING">, C<"DELETED">
=head2 Tags => MediaLive_Tags

A collection of key-value pairs.


=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">, C<"MP4_FILE">, C<"MEDIACONNECT">
=head2 _request_id => Str


=cut

