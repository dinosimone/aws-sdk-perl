# Generated from default/object.tt
package Paws::Batch::AttemptDetail;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Batch::Types qw/Batch_AttemptContainerDetail/;
  has Container => (is => 'ro', isa => Batch_AttemptContainerDetail);
  has StartedAt => (is => 'ro', isa => Int);
  has StatusReason => (is => 'ro', isa => Str);
  has StoppedAt => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusReason' => {
                                   'type' => 'Str'
                                 },
               'StoppedAt' => {
                                'type' => 'Int'
                              },
               'StartedAt' => {
                                'type' => 'Int'
                              },
               'Container' => {
                                'class' => 'Paws::Batch::AttemptContainerDetail',
                                'type' => 'Batch_AttemptContainerDetail'
                              }
             },
  'NameInRequest' => {
                       'StatusReason' => 'statusReason',
                       'StoppedAt' => 'stoppedAt',
                       'StartedAt' => 'startedAt',
                       'Container' => 'container'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::AttemptDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::AttemptDetail object:

  $service_obj->Method(Att1 => { Container => $value, ..., StoppedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::AttemptDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

An object representing a job attempt.

=head1 ATTRIBUTES


=head2 Container => Batch_AttemptContainerDetail

  Details about the container in this job attempt.


=head2 StartedAt => Int

  The Unix timestamp (in seconds and milliseconds) for when the attempt
was started (when the attempt transitioned from the C<STARTING> state
to the C<RUNNING> state).


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job attempt.


=head2 StoppedAt => Int

  The Unix timestamp (in seconds and milliseconds) for when the attempt
was stopped (when the attempt transitioned from the C<RUNNING> state to
a terminal state, such as C<SUCCEEDED> or C<FAILED>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

