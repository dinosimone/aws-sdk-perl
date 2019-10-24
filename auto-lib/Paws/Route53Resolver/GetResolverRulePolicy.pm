# Generated from json/callargs_class.tt

package Paws::Route53Resolver::GetResolverRulePolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetResolverRulePolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Route53Resolver::GetResolverRulePolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
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

Paws::Route53Resolver::GetResolverRulePolicy - Arguments for method GetResolverRulePolicy on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResolverRulePolicy on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method GetResolverRulePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResolverRulePolicy.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $GetResolverRulePolicyResponse = $route53resolver->GetResolverRulePolicy(
      Arn => 'MyArn',

    );

    # Results:
    my $ResolverRulePolicy = $GetResolverRulePolicyResponse->ResolverRulePolicy;

    # Returns a L<Paws::Route53Resolver::GetResolverRulePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/GetResolverRulePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ID of the resolver rule policy that you want to get information
about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResolverRulePolicy in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

