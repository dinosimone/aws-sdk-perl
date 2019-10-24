# Generated from default/object.tt
package Paws::IAM::EvaluationResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IAM::Types qw/IAM_Statement IAM_ResourceSpecificResult IAM_EvalDecisionDetailsType IAM_OrganizationsDecisionDetail/;
  has EvalActionName => (is => 'ro', isa => Str, required => 1);
  has EvalDecision => (is => 'ro', isa => Str, required => 1);
  has EvalDecisionDetails => (is => 'ro', isa => IAM_EvalDecisionDetailsType);
  has EvalResourceName => (is => 'ro', isa => Str);
  has MatchedStatements => (is => 'ro', isa => ArrayRef[IAM_Statement]);
  has MissingContextValues => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has OrganizationsDecisionDetail => (is => 'ro', isa => IAM_OrganizationsDecisionDetail);
  has ResourceSpecificResults => (is => 'ro', isa => ArrayRef[IAM_ResourceSpecificResult]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationsDecisionDetail' => {
                                                  'class' => 'Paws::IAM::OrganizationsDecisionDetail',
                                                  'type' => 'IAM_OrganizationsDecisionDetail'
                                                },
               'EvalResourceName' => {
                                       'type' => 'Str'
                                     },
               'EvalDecision' => {
                                   'type' => 'Str'
                                 },
               'ResourceSpecificResults' => {
                                              'class' => 'Paws::IAM::ResourceSpecificResult',
                                              'type' => 'ArrayRef[IAM_ResourceSpecificResult]'
                                            },
               'EvalActionName' => {
                                     'type' => 'Str'
                                   },
               'MissingContextValues' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'EvalDecisionDetails' => {
                                          'class' => 'Paws::IAM::EvalDecisionDetailsType',
                                          'type' => 'IAM_EvalDecisionDetailsType'
                                        },
               'MatchedStatements' => {
                                        'class' => 'Paws::IAM::Statement',
                                        'type' => 'ArrayRef[IAM_Statement]'
                                      }
             },
  'IsRequired' => {
                    'EvalActionName' => 1,
                    'EvalDecision' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::EvaluationResult object:

  $service_obj->Method(Att1 => { EvalActionName => $value, ..., ResourceSpecificResults => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->EvalActionName

=head1 DESCRIPTION

Contains the results of a simulation.

This data type is used by the return parameter of C<
SimulateCustomPolicy > and C< SimulatePrincipalPolicy >.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvalActionName => Str

  The name of the API operation tested on the indicated resource.


=head2 B<REQUIRED> EvalDecision => Str

  The result of the simulation.


=head2 EvalDecisionDetails => IAM_EvalDecisionDetailsType

  Additional details about the results of the evaluation decision. When
there are both IAM policies and resource policies, this parameter
explains how each set of policies contributes to the final evaluation
decision. When simulating cross-account access to a resource, both the
resource-based policy and the caller's IAM policy must grant access.
See How IAM Roles Differ from Resource-based Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html)


=head2 EvalResourceName => Str

  The ARN of the resource that the indicated API operation was tested on.


=head2 MatchedStatements => ArrayRef[IAM_Statement]

  A list of the statements in the input policies that determine the
result for this scenario. Remember that even if multiple statements
allow the operation on the resource, if only one statement denies that
operation, then the explicit deny overrides any allow. In addition, the
deny statement is the only entry included in the result.


=head2 MissingContextValues => ArrayRef[Str|Undef]

  A list of context keys that are required by the included input policies
but that were not provided by one of the input parameters. This list is
used when the resource in a simulation is "*", either explicitly, or
when the C<ResourceArns> parameter blank. If you include a list of
resources, then any missing context values are instead included under
the C<ResourceSpecificResults> section. To discover the context keys
used by a set of policies, you can call GetContextKeysForCustomPolicy
or GetContextKeysForPrincipalPolicy.


=head2 OrganizationsDecisionDetail => IAM_OrganizationsDecisionDetail

  A structure that details how Organizations and its service control
policies affect the results of the simulation. Only applies if the
simulated user's account is part of an organization.


=head2 ResourceSpecificResults => ArrayRef[IAM_ResourceSpecificResult]

  The individual results of the simulation of the API operation specified
in EvalActionName on each resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

