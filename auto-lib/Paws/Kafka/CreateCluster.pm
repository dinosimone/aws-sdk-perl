
package Paws::Kafka::CreateCluster;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw/Kafka_ClientAuthentication Kafka___mapOf__string Kafka_ConfigurationInfo Kafka_EncryptionInfo Kafka_BrokerNodeGroupInfo/;
  has BrokerNodeGroupInfo => (is => 'ro', isa => Kafka_BrokerNodeGroupInfo, required => 1, predicate => 1);
  has ClientAuthentication => (is => 'ro', isa => Kafka_ClientAuthentication, predicate => 1);
  has ClusterName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConfigurationInfo => (is => 'ro', isa => Kafka_ConfigurationInfo, predicate => 1);
  has EncryptionInfo => (is => 'ro', isa => Kafka_EncryptionInfo, predicate => 1);
  has EnhancedMonitoring => (is => 'ro', isa => Str, predicate => 1);
  has KafkaVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NumberOfBrokerNodes => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Kafka___mapOf__string, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/clusters');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kafka::CreateClusterResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KafkaVersion' => {
                                   'type' => 'Str'
                                 },
               'BrokerNodeGroupInfo' => {
                                          'class' => 'Paws::Kafka::BrokerNodeGroupInfo',
                                          'type' => 'Kafka_BrokerNodeGroupInfo'
                                        },
               'EncryptionInfo' => {
                                     'class' => 'Paws::Kafka::EncryptionInfo',
                                     'type' => 'Kafka_EncryptionInfo'
                                   },
               'EnhancedMonitoring' => {
                                         'type' => 'Str'
                                       },
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Kafka::__mapOf__string',
                           'type' => 'Kafka___mapOf__string'
                         },
               'ClientAuthentication' => {
                                           'class' => 'Paws::Kafka::ClientAuthentication',
                                           'type' => 'Kafka_ClientAuthentication'
                                         },
               'ConfigurationInfo' => {
                                        'class' => 'Paws::Kafka::ConfigurationInfo',
                                        'type' => 'Kafka_ConfigurationInfo'
                                      },
               'NumberOfBrokerNodes' => {
                                          'type' => 'Int'
                                        }
             },
  'NameInRequest' => {
                       'KafkaVersion' => 'kafkaVersion',
                       'BrokerNodeGroupInfo' => 'brokerNodeGroupInfo',
                       'EncryptionInfo' => 'encryptionInfo',
                       'EnhancedMonitoring' => 'enhancedMonitoring',
                       'ClusterName' => 'clusterName',
                       'Tags' => 'tags',
                       'ClientAuthentication' => 'clientAuthentication',
                       'ConfigurationInfo' => 'configurationInfo',
                       'NumberOfBrokerNodes' => 'numberOfBrokerNodes'
                     },
  'IsRequired' => {
                    'KafkaVersion' => 1,
                    'BrokerNodeGroupInfo' => 1,
                    'ClusterName' => 1,
                    'NumberOfBrokerNodes' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateCluster - Arguments for method CreateCluster on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateClusterResponse = $kafka->CreateCluster(
      BrokerNodeGroupInfo => {
        ClientSubnets => [ 'My__string', ... ],
        InstanceType  => 'My__stringMin5Max32',    # min: 5, max: 32
        BrokerAZDistribution => 'DEFAULT',         # values: DEFAULT; OPTIONAL
        SecurityGroups => [ 'My__string', ... ],
        StorageInfo    => {
          EbsStorageInfo => {
            VolumeSize => 1,    # min: 1, max: 16384; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClusterName          => 'My__stringMin1Max64',
      KafkaVersion         => 'My__stringMin1Max128',
      NumberOfBrokerNodes  => 1,
      ClientAuthentication => {
        Tls => { CertificateAuthorityArnList => [ 'My__string', ... ], }
        ,     # OPTIONAL
      },    # OPTIONAL
      ConfigurationInfo => {
        Arn      => 'My__string',
        Revision => 1,

      },    # OPTIONAL
      EncryptionInfo => {
        EncryptionAtRest => {
          DataVolumeKMSKeyId => 'My__string',

        },    # OPTIONAL
        EncryptionInTransit => {
          ClientBroker =>
            'TLS',    # values: TLS, TLS_PLAINTEXT, PLAINTEXT; OPTIONAL
          InCluster => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      EnhancedMonitoring => 'DEFAULT',              # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $ClusterArn  = $CreateClusterResponse->ClusterArn;
    my $ClusterName = $CreateClusterResponse->ClusterName;
    my $State       = $CreateClusterResponse->State;

    # Returns a L<Paws::Kafka::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerNodeGroupInfo => Kafka_BrokerNodeGroupInfo

Information about the broker nodes in the cluster.



=head2 ClientAuthentication => Kafka_ClientAuthentication

Includes all client authentication related information.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 ConfigurationInfo => Kafka_ConfigurationInfo

Represents the configuration that you want MSK to use for the brokers
in a cluster.



=head2 EncryptionInfo => Kafka_EncryptionInfo

Includes all encryption-related information.



=head2 EnhancedMonitoring => Str

Specifies the level of monitoring for the MSK cluster. The possible
values are DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.

Valid values are: C<"DEFAULT">, C<"PER_BROKER">, C<"PER_TOPIC_PER_BROKER">

=head2 B<REQUIRED> KafkaVersion => Str

The version of Apache Kafka.



=head2 B<REQUIRED> NumberOfBrokerNodes => Int

The number of broker nodes in the cluster.



=head2 Tags => Kafka___mapOf__string

Create tags when creating the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

