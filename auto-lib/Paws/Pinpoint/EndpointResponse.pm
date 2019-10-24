
package Paws::Pinpoint::EndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EndpointDemographic Pinpoint_EndpointUser Pinpoint_MapOfListOf__string Pinpoint_MapOf__double Pinpoint_EndpointLocation/;
  has Address => (is => 'ro', isa => Str);
  has ApplicationId => (is => 'ro', isa => Str);
  has Attributes => (is => 'ro', isa => Pinpoint_MapOfListOf__string);
  has ChannelType => (is => 'ro', isa => Str);
  has CohortId => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has Demographic => (is => 'ro', isa => Pinpoint_EndpointDemographic);
  has EffectiveDate => (is => 'ro', isa => Str);
  has EndpointStatus => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Pinpoint_EndpointLocation);
  has Metrics => (is => 'ro', isa => Pinpoint_MapOf__double);
  has OptOut => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has User => (is => 'ro', isa => Pinpoint_EndpointUser);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Address' => {
                              'type' => 'Str'
                            },
               'User' => {
                           'class' => 'Paws::Pinpoint::EndpointUser',
                           'type' => 'Pinpoint_EndpointUser'
                         },
               'Metrics' => {
                              'class' => 'Paws::Pinpoint::MapOf__double',
                              'type' => 'Pinpoint_MapOf__double'
                            },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Location' => {
                               'class' => 'Paws::Pinpoint::EndpointLocation',
                               'type' => 'Pinpoint_EndpointLocation'
                             },
               'ChannelType' => {
                                  'type' => 'Str'
                                },
               'CohortId' => {
                               'type' => 'Str'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'EffectiveDate' => {
                                    'type' => 'Str'
                                  },
               'Attributes' => {
                                 'class' => 'Paws::Pinpoint::MapOfListOf__string',
                                 'type' => 'Pinpoint_MapOfListOf__string'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OptOut' => {
                             'type' => 'Str'
                           },
               'Demographic' => {
                                  'class' => 'Paws::Pinpoint::EndpointDemographic',
                                  'type' => 'Pinpoint_EndpointDemographic'
                                },
               'EndpointStatus' => {
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

Paws::Pinpoint::EndpointResponse

=head1 ATTRIBUTES


=head2 Address => Str

The destination address for messages or push notifications that you
send to the endpoint. The address varies by channel. For example, the
address for a push-notification channel is typically the token provided
by a push notification service, such as an Apple Push Notification
service (APNs) device token or a Firebase Cloud Messaging (FCM)
registration token. The address for the SMS channel is a phone number
in E.164 format, such as +12065550100. The address for the email
channel is an email address.


=head2 ApplicationId => Str

The unique identifier for the application that's associated with the
endpoint.


=head2 Attributes => Pinpoint_MapOfListOf__string

One or more custom attributes that describe the endpoint by associating
a name with an array of values. For example, the value of a custom
attribute named Interests might be: ["science", "music", "travel"]. You
can use these attributes as filter criteria when you create segments.


=head2 ChannelType => Str

The channel that's used when sending messages or push notifications to
the endpoint.

Valid values are: C<"GCM">, C<"APNS">, C<"APNS_SANDBOX">, C<"APNS_VOIP">, C<"APNS_VOIP_SANDBOX">, C<"ADM">, C<"SMS">, C<"VOICE">, C<"EMAIL">, C<"BAIDU">, C<"CUSTOM">
=head2 CohortId => Str

A number from 0-99 that represents the cohort that the endpoint is
assigned to. Endpoints are grouped into cohorts randomly, and each
cohort contains approximately 1 percent of the endpoints for an
application. Amazon Pinpoint assigns cohorts to the holdout or
treatment allocations for campaigns.


=head2 CreationDate => Str

The date and time, in ISO 8601 format, when the endpoint was created.


=head2 Demographic => Pinpoint_EndpointDemographic

The demographic information for the endpoint, such as the time zone and
platform.


=head2 EffectiveDate => Str

The date and time, in ISO 8601 format, when the endpoint was last
updated.


=head2 EndpointStatus => Str

Not used.


=head2 Id => Str

The unique identifier that you assigned to the endpoint. The identifier
should be a globally unique identifier (GUID) to ensure that it doesn't
conflict with other endpoint identifiers that are associated with the
application.


=head2 Location => Pinpoint_EndpointLocation

The geographic information for the endpoint.


=head2 Metrics => Pinpoint_MapOf__double

One or more custom metrics that your app reports to Amazon Pinpoint for
the endpoint.


=head2 OptOut => Str

Specifies whether the user who's associated with the endpoint has opted
out of receiving messages and push notifications from you. Possible
values are: ALL, the user has opted out and doesn't want to receive any
messages or push notifications; and, NONE, the user hasn't opted out
and wants to receive all messages and push notifications.


=head2 RequestId => Str

The unique identifier for the most recent request to update the
endpoint.


=head2 User => Pinpoint_EndpointUser

One or more custom user attributes that your app reports to Amazon
Pinpoint for the user who's associated with the endpoint.


=head2 _request_id => Str


=cut

