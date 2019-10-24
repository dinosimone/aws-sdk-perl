# Generated from default/object.tt
package Paws::Robomaker::RobotApplicationConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_LaunchConfig/;
  has Application => (is => 'ro', isa => Str, required => 1);
  has ApplicationVersion => (is => 'ro', isa => Str);
  has LaunchConfig => (is => 'ro', isa => Robomaker_LaunchConfig, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchConfig' => {
                                   'class' => 'Paws::Robomaker::LaunchConfig',
                                   'type' => 'Robomaker_LaunchConfig'
                                 },
               'ApplicationVersion' => {
                                         'type' => 'Str'
                                       },
               'Application' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LaunchConfig' => 'launchConfig',
                       'ApplicationVersion' => 'applicationVersion',
                       'Application' => 'application'
                     },
  'IsRequired' => {
                    'LaunchConfig' => 1,
                    'Application' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::RobotApplicationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::RobotApplicationConfig object:

  $service_obj->Method(Att1 => { Application => $value, ..., LaunchConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::RobotApplicationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Application

=head1 DESCRIPTION

Application configuration information for a robot.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

  The application information for the robot application.


=head2 ApplicationVersion => Str

  The version of the robot application.


=head2 B<REQUIRED> LaunchConfig => Robomaker_LaunchConfig

  The launch configuration for the robot application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

