
package Paws::Route53::DeleteTrafficPolicy;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Version => (is => 'ro', isa => Int, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTrafficPolicy');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}/{Version}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Route53::DeleteTrafficPolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Int'
                            },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'ParamInURI' => {
                    'Version' => 'Version',
                    'Id' => 'Id'
                  },
  'IsRequired' => {
                    'Version' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteTrafficPolicy - Arguments for method DeleteTrafficPolicy on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrafficPolicy on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method DeleteTrafficPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrafficPolicy.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $DeleteTrafficPolicyResponse = $route53->DeleteTrafficPolicy(
      Id      => 'MyTrafficPolicyId',
      Version => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/DeleteTrafficPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the traffic policy that you want to delete.



=head2 B<REQUIRED> Version => Int

The version number of the traffic policy that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrafficPolicy in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

