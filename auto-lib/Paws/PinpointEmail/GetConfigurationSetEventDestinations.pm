
package Paws::PinpointEmail::GetConfigurationSetEventDestinations;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointEmail::Types qw//;
  has ConfigurationSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetConfigurationSetEventDestinations');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::GetConfigurationSetEventDestinationsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         }
             },
  'ParamInURI' => {
                    'ConfigurationSetName' => 'ConfigurationSetName'
                  },
  'IsRequired' => {
                    'ConfigurationSetName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetConfigurationSetEventDestinations - Arguments for method GetConfigurationSetEventDestinations on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfigurationSetEventDestinations on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method GetConfigurationSetEventDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfigurationSetEventDestinations.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $GetConfigurationSetEventDestinationsResponse =
      $email->GetConfigurationSetEventDestinations(
      ConfigurationSetName => 'MyConfigurationSetName',

      );

    # Results:
    my $EventDestinations =
      $GetConfigurationSetEventDestinationsResponse->EventDestinations;

# Returns a L<Paws::PinpointEmail::GetConfigurationSetEventDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetConfigurationSetEventDestinations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that contains the event destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfigurationSetEventDestinations in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

