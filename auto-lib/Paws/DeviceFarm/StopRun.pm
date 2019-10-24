# Generated from json/callargs_class.tt

package Paws::DeviceFarm::StopRun;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::StopRunResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Arn' => 'arn'
                     },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopRun - Arguments for method StopRun on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopRun on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method StopRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopRun.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To stop a test run
    # The following example stops a specific test run.
    my $StopRunResult = $devicefarm->StopRun( 'Arn' =>
        'arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456' );

    # Results:
    my $run = $StopRunResult->run;

    # Returns a L<Paws::DeviceFarm::StopRunResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/StopRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Represents the Amazon Resource Name (ARN) of the Device Farm run you
wish to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopRun in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

