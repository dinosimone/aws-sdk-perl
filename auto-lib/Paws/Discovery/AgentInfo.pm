# Generated from default/object.tt
package Paws::Discovery::AgentInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_AgentNetworkInfo/;
  has AgentId => (is => 'ro', isa => Str);
  has AgentNetworkInfoList => (is => 'ro', isa => ArrayRef[Discovery_AgentNetworkInfo]);
  has AgentType => (is => 'ro', isa => Str);
  has CollectionStatus => (is => 'ro', isa => Str);
  has ConnectorId => (is => 'ro', isa => Str);
  has Health => (is => 'ro', isa => Str);
  has HostName => (is => 'ro', isa => Str);
  has LastHealthPingTime => (is => 'ro', isa => Str);
  has RegisteredTime => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastHealthPingTime' => {
                                         'type' => 'Str'
                                       },
               'AgentType' => {
                                'type' => 'Str'
                              },
               'HostName' => {
                               'type' => 'Str'
                             },
               'RegisteredTime' => {
                                     'type' => 'Str'
                                   },
               'Version' => {
                              'type' => 'Str'
                            },
               'Health' => {
                             'type' => 'Str'
                           },
               'AgentNetworkInfoList' => {
                                           'class' => 'Paws::Discovery::AgentNetworkInfo',
                                           'type' => 'ArrayRef[Discovery_AgentNetworkInfo]'
                                         },
               'ConnectorId' => {
                                  'type' => 'Str'
                                },
               'CollectionStatus' => {
                                       'type' => 'Str'
                                     },
               'AgentId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'LastHealthPingTime' => 'lastHealthPingTime',
                       'AgentType' => 'agentType',
                       'HostName' => 'hostName',
                       'RegisteredTime' => 'registeredTime',
                       'Version' => 'version',
                       'Health' => 'health',
                       'AgentNetworkInfoList' => 'agentNetworkInfoList',
                       'ConnectorId' => 'connectorId',
                       'CollectionStatus' => 'collectionStatus',
                       'AgentId' => 'agentId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::AgentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::AgentInfo object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::AgentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Information about agents or connectors associated with the
userE<rsquo>s AWS account. Information includes agent or connector IDs,
IP addresses, media access control (MAC) addresses, agent or connector
health, hostname where the agent or connector resides, and agent
version for each agent.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The agent or connector ID.


=head2 AgentNetworkInfoList => ArrayRef[Discovery_AgentNetworkInfo]

  Network details about the host where the agent or connector resides.


=head2 AgentType => Str

  Type of agent.


=head2 CollectionStatus => Str

  Status of the collection process for an agent or connector.


=head2 ConnectorId => Str

  The ID of the connector.


=head2 Health => Str

  The health of the agent or connector.


=head2 HostName => Str

  The name of the host where the agent or connector resides. The host can
be a server or virtual machine.


=head2 LastHealthPingTime => Str

  Time since agent or connector health was reported.


=head2 RegisteredTime => Str

  Agent's first registration timestamp in UTC.


=head2 Version => Str

  The agent or connector version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

