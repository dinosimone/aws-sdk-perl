# Generated from default/object.tt
package Paws::IoTEvents::ClearTimerAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has TimerName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimerName' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'TimerName' => 'timerName'
                     },
  'IsRequired' => {
                    'TimerName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ClearTimerAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::ClearTimerAction object:

  $service_obj->Method(Att1 => { TimerName => $value, ..., TimerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::ClearTimerAction object:

  $result = $service_obj->Method(...);
  $result->Att1->TimerName

=head1 DESCRIPTION

Information needed to clear the timer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TimerName => Str

  The name of the timer to clear.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

