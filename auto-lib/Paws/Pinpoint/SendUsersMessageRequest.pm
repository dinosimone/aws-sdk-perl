# Generated from default/object.tt
package Paws::Pinpoint::SendUsersMessageRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_MapOfEndpointSendConfiguration Pinpoint_DirectMessageConfiguration/;
  has Context => (is => 'ro', isa => Pinpoint_MapOf__string);
  has MessageConfiguration => (is => 'ro', isa => Pinpoint_DirectMessageConfiguration, required => 1);
  has TraceId => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => Pinpoint_MapOfEndpointSendConfiguration, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Users' => {
                            'class' => 'Paws::Pinpoint::MapOfEndpointSendConfiguration',
                            'type' => 'Pinpoint_MapOfEndpointSendConfiguration'
                          },
               'TraceId' => {
                              'type' => 'Str'
                            },
               'MessageConfiguration' => {
                                           'class' => 'Paws::Pinpoint::DirectMessageConfiguration',
                                           'type' => 'Pinpoint_DirectMessageConfiguration'
                                         },
               'Context' => {
                              'class' => 'Paws::Pinpoint::MapOf__string',
                              'type' => 'Pinpoint_MapOf__string'
                            }
             },
  'IsRequired' => {
                    'Users' => 1,
                    'MessageConfiguration' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessageRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SendUsersMessageRequest object:

  $service_obj->Method(Att1 => { Context => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SendUsersMessageRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Context

=head1 DESCRIPTION

Specifies the configuration and other settings for a message to send to
all the endpoints that are associated with a list of users.

=head1 ATTRIBUTES


=head2 Context => Pinpoint_MapOf__string

  A map of custom attribute-value pairs. For a push notification, Amazon
Pinpoint adds these attributes to the data.pinpoint object in the body
of the notification payload. Amazon Pinpoint also provides these
attributes in the events that it generates for users-messages
deliveries.


=head2 B<REQUIRED> MessageConfiguration => Pinpoint_DirectMessageConfiguration

  The message definitions for the default message and any default
messages that you defined for specific channels.


=head2 TraceId => Str

  The unique identifier for tracing the message. This identifier is
visible to message recipients.


=head2 B<REQUIRED> Users => Pinpoint_MapOfEndpointSendConfiguration

  A map that associates user IDs with EndpointSendConfiguration objects.
You can use an EndpointSendConfiguration object to tailor the message
for a user by specifying settings such as content overrides and message
variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

