
package Paws::Route53::CreateTrafficPolicyResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_TrafficPolicy/;
  has Location => (is => 'ro', isa => Str, required => 1);
  has TrafficPolicy => (is => 'ro', isa => Route53_TrafficPolicy, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficPolicy' => {
                                    'class' => 'Paws::Route53::TrafficPolicy',
                                    'type' => 'Route53_TrafficPolicy'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     },
  'IsRequired' => {
                    'TrafficPolicy' => 1,
                    'Location' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

A unique URL that represents a new traffic policy.



=head2 B<REQUIRED> TrafficPolicy => Route53_TrafficPolicy

A complex type that contains settings for the new traffic policy.




=cut

