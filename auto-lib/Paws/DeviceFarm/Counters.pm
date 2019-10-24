# Generated from default/object.tt
package Paws::DeviceFarm::Counters;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::DeviceFarm::Types qw//;
  has Errored => (is => 'ro', isa => Int);
  has Failed => (is => 'ro', isa => Int);
  has Passed => (is => 'ro', isa => Int);
  has Skipped => (is => 'ro', isa => Int);
  has Stopped => (is => 'ro', isa => Int);
  has Total => (is => 'ro', isa => Int);
  has Warned => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Total' => {
                            'type' => 'Int'
                          },
               'Passed' => {
                             'type' => 'Int'
                           },
               'Stopped' => {
                              'type' => 'Int'
                            },
               'Errored' => {
                              'type' => 'Int'
                            },
               'Warned' => {
                             'type' => 'Int'
                           },
               'Failed' => {
                             'type' => 'Int'
                           },
               'Skipped' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'Total' => 'total',
                       'Passed' => 'passed',
                       'Stopped' => 'stopped',
                       'Errored' => 'errored',
                       'Warned' => 'warned',
                       'Failed' => 'failed',
                       'Skipped' => 'skipped'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Counters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Counters object:

  $service_obj->Method(Att1 => { Errored => $value, ..., Warned => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Counters object:

  $result = $service_obj->Method(...);
  $result->Att1->Errored

=head1 DESCRIPTION

Represents entity counters.

=head1 ATTRIBUTES


=head2 Errored => Int

  The number of errored entities.


=head2 Failed => Int

  The number of failed entities.


=head2 Passed => Int

  The number of passed entities.


=head2 Skipped => Int

  The number of skipped entities.


=head2 Stopped => Int

  The number of stopped entities.


=head2 Total => Int

  The total number of entities.


=head2 Warned => Int

  The number of warned entities.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

