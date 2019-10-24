# Generated from json/callargs_class.tt

package Paws::CodeDeploy::BatchGetDeployments;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has DeploymentIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchGetDeployments');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'DeploymentIds' => 'deploymentIds'
                     },
  'IsRequired' => {
                    'DeploymentIds' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeployments - Arguments for method BatchGetDeployments on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDeployments on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method BatchGetDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDeployments.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $BatchGetDeploymentsOutput = $codedeploy->BatchGetDeployments(
      DeploymentIds => [ 'MyDeploymentId', ... ],

    );

    # Results:
    my $DeploymentsInfo = $BatchGetDeploymentsOutput->DeploymentsInfo;

    # Returns a L<Paws::CodeDeploy::BatchGetDeploymentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/BatchGetDeployments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentIds => ArrayRef[Str|Undef]

A list of deployment IDs, separated by spaces. The maximum number of
deployment IDs you can specify is 25.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDeployments in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

