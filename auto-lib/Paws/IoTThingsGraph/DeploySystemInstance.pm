# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::DeploySystemInstance;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has Id => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeploySystemInstance');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::DeploySystemInstanceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Id' => 'id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeploySystemInstance - Arguments for method DeploySystemInstance on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeploySystemInstance on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method DeploySystemInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeploySystemInstance.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $DeploySystemInstanceResponse = $iotthingsgraph->DeploySystemInstance(
      Id => 'MyUrn',    # OPTIONAL
    );

    # Results:
    my $GreengrassDeploymentId =
      $DeploySystemInstanceResponse->GreengrassDeploymentId;
    my $Summary = $DeploySystemInstanceResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::DeploySystemInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/DeploySystemInstance>

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the system instance. This value is returned by the
C<CreateSystemInstance> action.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeploySystemInstance in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

