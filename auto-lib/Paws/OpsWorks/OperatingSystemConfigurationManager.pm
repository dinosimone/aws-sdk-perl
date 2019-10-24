# Generated from default/object.tt
package Paws::OpsWorks::OperatingSystemConfigurationManager;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::OperatingSystemConfigurationManager

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::OperatingSystemConfigurationManager object:

  $service_obj->Method(Att1 => { Name => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::OperatingSystemConfigurationManager object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A block that contains information about the configuration manager
(Chef) and the versions of the configuration manager that are supported
for an operating system.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the configuration manager, which is Chef.


=head2 Version => Str

  The versions of the configuration manager that are supported by an
operating system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

