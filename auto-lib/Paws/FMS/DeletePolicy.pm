# Generated from json/callargs_class.tt

package Paws::FMS::DeletePolicy;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::FMS::Types qw//;
  has DeleteAllPolicyResources => (is => 'ro', isa => Bool, predicate => 1);
  has PolicyId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeletePolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyId' => {
                               'type' => 'Str'
                             },
               'DeleteAllPolicyResources' => {
                                               'type' => 'Bool'
                                             }
             },
  'IsRequired' => {
                    'PolicyId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::DeletePolicy - Arguments for method DeletePolicy on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicy on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method DeletePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicy.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    $fms->DeletePolicy(
      PolicyId                 => 'MyPolicyId',
      DeleteAllPolicyResources => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/DeletePolicy>

=head1 ATTRIBUTES


=head2 DeleteAllPolicyResources => Bool

If C<True>, the request will also perform a clean-up process that will:

=over

=item *

Delete rule groups created by AWS Firewall Manager

=item *

Remove web ACLs from in-scope resources

=item *

Delete web ACLs that contain no rules or rule groups

=back

After the cleanup, in-scope resources will no longer be protected by
web ACLs in this policy. Protection of out-of-scope resources will
remain unchanged. Scope is determined by tags and accounts associated
with the policy. When creating the policy, if you specified that only
resources in specific accounts or with specific tags be protected by
the policy, those resources are in-scope. All others are out of scope.
If you did not specify tags or accounts, all resources are in-scope.



=head2 B<REQUIRED> PolicyId => Str

The ID of the policy that you want to delete. C<PolicyId> is returned
by C<PutPolicy> and by C<ListPolicies>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicy in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

