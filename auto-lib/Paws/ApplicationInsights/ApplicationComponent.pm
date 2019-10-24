# Generated from default/object.tt
package Paws::ApplicationInsights::ApplicationComponent;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ApplicationInsights::Types qw//;
  has ComponentName => (is => 'ro', isa => Str);
  has Monitor => (is => 'ro', isa => Bool);
  has ResourceType => (is => 'ro', isa => Str);
  has Tier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tier' => {
                           'type' => 'Str'
                         },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Monitor' => {
                              'type' => 'Bool'
                            },
               'ComponentName' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ApplicationComponent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::ApplicationComponent object:

  $service_obj->Method(Att1 => { ComponentName => $value, ..., Tier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::ApplicationComponent object:

  $result = $service_obj->Method(...);
  $result->Att1->ComponentName

=head1 DESCRIPTION

Describes a standalone resource or similarly grouped resources that the
application is made up of.

=head1 ATTRIBUTES


=head2 ComponentName => Str

  The name of the component.


=head2 Monitor => Bool

  Indicates whether the application component is monitored.


=head2 ResourceType => Str

  The resource type. Supported resource types include EC2 instances, Auto
Scaling group, Classic ELB, Application ELB, and SQS Queue.


=head2 Tier => Str

  The stack tier of the application component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

