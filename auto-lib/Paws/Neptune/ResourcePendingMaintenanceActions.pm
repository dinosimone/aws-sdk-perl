# Generated from default/object.tt
package Paws::Neptune::ResourcePendingMaintenanceActions;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Neptune::Types qw/Neptune_PendingMaintenanceAction/;
  has PendingMaintenanceActionDetails => (is => 'ro', isa => ArrayRef[Neptune_PendingMaintenanceAction]);
  has ResourceIdentifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceIdentifier' => {
                                         'type' => 'Str'
                                       },
               'PendingMaintenanceActionDetails' => {
                                                      'class' => 'Paws::Neptune::PendingMaintenanceAction',
                                                      'type' => 'ArrayRef[Neptune_PendingMaintenanceAction]'
                                                    }
             },
  'NameInRequest' => {
                       'PendingMaintenanceActionDetails' => 'PendingMaintenanceAction'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ResourcePendingMaintenanceActions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::ResourcePendingMaintenanceActions object:

  $service_obj->Method(Att1 => { PendingMaintenanceActionDetails => $value, ..., ResourceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::ResourcePendingMaintenanceActions object:

  $result = $service_obj->Method(...);
  $result->Att1->PendingMaintenanceActionDetails

=head1 DESCRIPTION

Describes the pending maintenance actions for a resource.

=head1 ATTRIBUTES


=head2 PendingMaintenanceActionDetails => ArrayRef[Neptune_PendingMaintenanceAction]

  A list that provides details about the pending maintenance actions for
the resource.


=head2 ResourceIdentifier => Str

  The ARN of the resource that has pending maintenance actions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

