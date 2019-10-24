# Generated from json/callargs_class.tt

package Paws::ECS::DeleteTaskSet;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ECS::Types qw//;
  has Cluster => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Force => (is => 'ro', isa => Bool, predicate => 1);
  has Service => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TaskSet => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTaskSet');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::DeleteTaskSetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskSet' => {
                              'type' => 'Str'
                            },
               'Cluster' => {
                              'type' => 'Str'
                            },
               'Force' => {
                            'type' => 'Bool'
                          },
               'Service' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'TaskSet' => 'taskSet',
                       'Cluster' => 'cluster',
                       'Force' => 'force',
                       'Service' => 'service'
                     },
  'IsRequired' => {
                    'TaskSet' => 1,
                    'Cluster' => 1,
                    'Service' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteTaskSet - Arguments for method DeleteTaskSet on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTaskSet on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeleteTaskSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTaskSet.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DeleteTaskSetResponse = $ecs->DeleteTaskSet(
      Cluster => 'MyString',
      Service => 'MyString',
      TaskSet => 'MyString',
      Force   => 1,            # OPTIONAL
    );

    # Results:
    my $TaskSet = $DeleteTaskSetResponse->TaskSet;

    # Returns a L<Paws::ECS::DeleteTaskSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeleteTaskSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task set exists in to delete.



=head2 Force => Bool

If C<true>, this allows you to delete a task set even if it hasn't been
scaled down to zero.



=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service that
hosts the task set to delete.



=head2 B<REQUIRED> TaskSet => Str

The task set ID or full Amazon Resource Name (ARN) of the task set to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTaskSet in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

