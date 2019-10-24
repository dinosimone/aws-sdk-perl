# Generated from default/object.tt
package Paws::StepFunctions::StateMachineListItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has StateMachineArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'StateMachineArn' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'CreationDate' => 'creationDate',
                       'StateMachineArn' => 'stateMachineArn',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'CreationDate' => 1,
                    'StateMachineArn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StateMachineListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::StateMachineListItem object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., StateMachineArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::StateMachineListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Contains details about the state machine.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

  The date the state machine is created.


=head2 B<REQUIRED> Name => Str

  The name of the state machine.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back



=head2 B<REQUIRED> StateMachineArn => Str

  The Amazon Resource Name (ARN) that identifies the state machine.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

