
package Paws::Greengrass::CreateDeviceDefinition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_Tags Greengrass_DeviceDefinitionVersion/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has InitialVersion => (is => 'ro', isa => Greengrass_DeviceDefinitionVersion, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Greengrass_Tags, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeviceDefinition');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/devices');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateDeviceDefinitionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InitialVersion' => {
                                     'class' => 'Paws::Greengrass::DeviceDefinitionVersion',
                                     'type' => 'Greengrass_DeviceDefinitionVersion'
                                   },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    },
               'Tags' => {
                           'class' => 'Paws::Greengrass::Tags',
                           'type' => 'Greengrass_Tags'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateDeviceDefinition - Arguments for method CreateDeviceDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeviceDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateDeviceDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeviceDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateDeviceDefinitionResponse = $greengrass->CreateDeviceDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Devices => [
          {
            CertificateArn => 'My__string',
            Id             => 'My__string',
            SyncShadow     => 1,              # OPTIONAL
            ThingArn       => 'My__string',
          },
          ...
        ],                                    # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',                         # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateDeviceDefinitionResponse->Arn;
    my $CreationTimestamp = $CreateDeviceDefinitionResponse->CreationTimestamp;
    my $Id                = $CreateDeviceDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateDeviceDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateDeviceDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateDeviceDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateDeviceDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateDeviceDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateDeviceDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => Greengrass_DeviceDefinitionVersion

Information about the initial version of the device definition.



=head2 Name => Str

The name of the device definition.



=head2 Tags => Greengrass_Tags

Tag(s) to add to the new resource




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeviceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

