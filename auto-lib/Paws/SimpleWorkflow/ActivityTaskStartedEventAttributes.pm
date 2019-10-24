# Generated from default/object.tt
package Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw//;
  has Identity => (is => 'ro', isa => Str);
  has ScheduledEventId => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduledEventId' => {
                                       'type' => 'Int'
                                     },
               'Identity' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ScheduledEventId' => 'scheduledEventId',
                       'Identity' => 'identity'
                     },
  'IsRequired' => {
                    'ScheduledEventId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes object:

  $service_obj->Method(Att1 => { Identity => $value, ..., ScheduledEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Identity

=head1 DESCRIPTION

Provides the details of the C<ActivityTaskStarted> event.

=head1 ATTRIBUTES


=head2 Identity => Str

  Identity of the worker that was assigned this task. This aids
diagnostics when problems arise. The form of this identity is user
defined.


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<ActivityTaskScheduled> event that was recorded when
this activity task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

