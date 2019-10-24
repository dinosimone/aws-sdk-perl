# Generated from default/map_enum.tt
package Paws::ServiceCatalog::ProvisionedProductFilters;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ServiceCatalog::Types qw//;
  has SearchQuery => (is => 'ro', isa => ArrayRef[Str|Undef]);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'SearchQuery' => {
                                          type => 'ArrayRef[Str|Undef]',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionedProductFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisionedProductFilters object:

  $service_obj->Method(Att1 => { SearchQuery => $value, ..., SearchQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisionedProductFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->SearchQuery

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 SearchQuery => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

