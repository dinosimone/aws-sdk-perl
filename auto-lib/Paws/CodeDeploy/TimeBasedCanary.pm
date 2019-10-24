# Generated from default/object.tt
package Paws::CodeDeploy::TimeBasedCanary;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::CodeDeploy::Types qw//;
  has CanaryInterval => (is => 'ro', isa => Int);
  has CanaryPercentage => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CanaryInterval' => {
                                     'type' => 'Int'
                                   },
               'CanaryPercentage' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'CanaryInterval' => 'canaryInterval',
                       'CanaryPercentage' => 'canaryPercentage'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TimeBasedCanary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TimeBasedCanary object:

  $service_obj->Method(Att1 => { CanaryInterval => $value, ..., CanaryPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TimeBasedCanary object:

  $result = $service_obj->Method(...);
  $result->Att1->CanaryInterval

=head1 DESCRIPTION

A configuration that shifts traffic from one version of a Lambda
function to another in two increments. The original and target Lambda
function versions are specified in the deployment's AppSpec file.

=head1 ATTRIBUTES


=head2 CanaryInterval => Int

  The number of minutes between the first and second traffic shifts of a
C<TimeBasedCanary> deployment.


=head2 CanaryPercentage => Int

  The percentage of traffic to shift in the first increment of a
C<TimeBasedCanary> deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

