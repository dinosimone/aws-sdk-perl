# Generated from default/object.tt
package Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_TaskList SimpleWorkflow_ActivityType/;
  has ActivityId => (is => 'ro', isa => Str, required => 1);
  has ActivityType => (is => 'ro', isa => SimpleWorkflow_ActivityType, required => 1);
  has Control => (is => 'ro', isa => Str);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);
  has HeartbeatTimeout => (is => 'ro', isa => Str);
  has Input => (is => 'ro', isa => Str);
  has ScheduleToCloseTimeout => (is => 'ro', isa => Str);
  has ScheduleToStartTimeout => (is => 'ro', isa => Str);
  has StartToCloseTimeout => (is => 'ro', isa => Str);
  has TaskList => (is => 'ro', isa => SimpleWorkflow_TaskList, required => 1);
  has TaskPriority => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduleToStartTimeout' => {
                                             'type' => 'Str'
                                           },
               'ActivityType' => {
                                   'class' => 'Paws::SimpleWorkflow::ActivityType',
                                   'type' => 'SimpleWorkflow_ActivityType'
                                 },
               'TaskList' => {
                               'class' => 'Paws::SimpleWorkflow::TaskList',
                               'type' => 'SimpleWorkflow_TaskList'
                             },
               'StartToCloseTimeout' => {
                                          'type' => 'Str'
                                        },
               'TaskPriority' => {
                                   'type' => 'Str'
                                 },
               'ActivityId' => {
                                 'type' => 'Str'
                               },
               'Control' => {
                              'type' => 'Str'
                            },
               'Input' => {
                            'type' => 'Str'
                          },
               'HeartbeatTimeout' => {
                                       'type' => 'Str'
                                     },
               'ScheduleToCloseTimeout' => {
                                             'type' => 'Str'
                                           },
               'DecisionTaskCompletedEventId' => {
                                                   'type' => 'Int'
                                                 }
             },
  'NameInRequest' => {
                       'ScheduleToStartTimeout' => 'scheduleToStartTimeout',
                       'ActivityType' => 'activityType',
                       'TaskList' => 'taskList',
                       'StartToCloseTimeout' => 'startToCloseTimeout',
                       'TaskPriority' => 'taskPriority',
                       'ActivityId' => 'activityId',
                       'Control' => 'control',
                       'Input' => 'input',
                       'HeartbeatTimeout' => 'heartbeatTimeout',
                       'ScheduleToCloseTimeout' => 'scheduleToCloseTimeout',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'ActivityType' => 1,
                    'ActivityId' => 1,
                    'TaskList' => 1,
                    'DecisionTaskCompletedEventId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes object:

  $service_obj->Method(Att1 => { ActivityId => $value, ..., TaskPriority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityId

=head1 DESCRIPTION

Provides the details of the C<ActivityTaskScheduled> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

  The unique ID of the activity task.


=head2 B<REQUIRED> ActivityType => SimpleWorkflow_ActivityType

  The type of the activity task.


=head2 Control => Str

  Data attached to the event that can be used by the decider in
subsequent workflow tasks. This data isn't sent to the activity.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision that resulted in the scheduling of this activity task. This
information can be useful for diagnosing problems by tracing back the
chain of events leading up to this event.


=head2 HeartbeatTimeout => Str

  The maximum time before which the worker processing this task must
report progress by calling RecordActivityTaskHeartbeat. If the timeout
is exceeded, the activity task is automatically timed out. If the
worker subsequently attempts to record a heartbeat or return a result,
it is ignored.


=head2 Input => Str

  The input provided to the activity task.


=head2 ScheduleToCloseTimeout => Str

  The maximum amount of time for this activity task.


=head2 ScheduleToStartTimeout => Str

  The maximum amount of time the activity task can wait to be assigned to
a worker.


=head2 StartToCloseTimeout => Str

  The maximum amount of time a worker may take to process the activity
task.


=head2 B<REQUIRED> TaskList => SimpleWorkflow_TaskList

  The task list in which the activity task has been scheduled.


=head2 TaskPriority => Str

  The priority to assign to the scheduled activity task. If set, this
overrides any default priority value that was assigned when the
activity type was registered.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

