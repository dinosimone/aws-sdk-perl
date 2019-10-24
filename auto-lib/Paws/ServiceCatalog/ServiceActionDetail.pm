# Generated from default/object.tt
package Paws::ServiceCatalog::ServiceActionDetail;
  use Moo;
  use Types::Standard qw//;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ServiceActionSummary ServiceCatalog_ServiceActionDefinitionMap/;
  has Definition => (is => 'ro', isa => ServiceCatalog_ServiceActionDefinitionMap);
  has ServiceActionSummary => (is => 'ro', isa => ServiceCatalog_ServiceActionSummary);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceActionSummary' => {
                                           'class' => 'Paws::ServiceCatalog::ServiceActionSummary',
                                           'type' => 'ServiceCatalog_ServiceActionSummary'
                                         },
               'Definition' => {
                                 'class' => 'Paws::ServiceCatalog::ServiceActionDefinitionMap',
                                 'type' => 'ServiceCatalog_ServiceActionDefinitionMap'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ServiceActionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ServiceActionDetail object:

  $service_obj->Method(Att1 => { Definition => $value, ..., ServiceActionSummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ServiceActionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

An object containing detailed information about the self-service
action.

=head1 ATTRIBUTES


=head2 Definition => ServiceCatalog_ServiceActionDefinitionMap

  A map that defines the self-service action.


=head2 ServiceActionSummary => ServiceCatalog_ServiceActionSummary

  Summary information about the self-service action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

