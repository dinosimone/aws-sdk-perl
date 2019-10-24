# Generated from default/map_enum.tt
package Paws::IoT::AlertTargets;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_AlertTarget/;
  has SNS => (is => 'ro', isa => IoT_AlertTarget);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'SNS' => {
                                          type => 'IoT_AlertTarget',                                          class => 'Paws::IoT::AlertTarget',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AlertTargets

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AlertTargets object:

  $service_obj->Method(Att1 => { SNS => $value, ..., SNS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AlertTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->SNS

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 SNS => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

