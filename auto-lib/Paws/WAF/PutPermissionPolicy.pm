# Generated from json/callargs_class.tt

package Paws::WAF::PutPermissionPolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw//;
  has Policy => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutPermissionPolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::PutPermissionPolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Policy' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::PutPermissionPolicy - Arguments for method PutPermissionPolicy on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPermissionPolicy on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method PutPermissionPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPermissionPolicy.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $PutPermissionPolicyResponse = $waf->PutPermissionPolicy(
      Policy      => 'MyPolicyString',
      ResourceArn => 'MyResourceArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/PutPermissionPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The policy to attach to the specified RuleGroup.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the RuleGroup to which you want to
attach the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPermissionPolicy in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

