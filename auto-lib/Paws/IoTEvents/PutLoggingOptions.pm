
package Paws::IoTEvents::PutLoggingOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_LoggingOptions/;
  has LoggingOptions => (is => 'ro', isa => IoTEvents_LoggingOptions, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutLoggingOptions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/logging');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggingOptions' => {
                                     'class' => 'Paws::IoTEvents::LoggingOptions',
                                     'type' => 'IoTEvents_LoggingOptions'
                                   }
             },
  'NameInRequest' => {
                       'LoggingOptions' => 'loggingOptions'
                     },
  'IsRequired' => {
                    'LoggingOptions' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::PutLoggingOptions - Arguments for method PutLoggingOptions on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLoggingOptions on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method PutLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLoggingOptions.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    $iotevents->PutLoggingOptions(
      LoggingOptions => {
        Enabled => 1,
        Level   => 'ERROR',                   # values: ERROR, INFO, DEBUG
        RoleArn => 'MyAmazonResourceName',    # min: 1, max: 2048
        DetectorDebugOptions => [
          {
            DetectorModelName => 'MyDetectorModelName',    # min: 1, max: 128
            KeyValue => 'MyKeyValue',    # min: 1, max: 128; OPTIONAL
          },
          ...
        ],                               # min: 1; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/PutLoggingOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingOptions => IoTEvents_LoggingOptions

The new values of the AWS IoT Events logging options.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLoggingOptions in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

