# Generated from default/object.tt
package Paws::Robomaker::DeploymentApplicationConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentLaunchConfig/;
  has Application => (is => 'ro', isa => Str, required => 1);
  has ApplicationVersion => (is => 'ro', isa => Str, required => 1);
  has LaunchConfig => (is => 'ro', isa => Robomaker_DeploymentLaunchConfig, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchConfig' => {
                                   'class' => 'Paws::Robomaker::DeploymentLaunchConfig',
                                   'type' => 'Robomaker_DeploymentLaunchConfig'
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
                    'ApplicationVersion' => 1,
                    'Application' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeploymentApplicationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DeploymentApplicationConfig object:

  $service_obj->Method(Att1 => { Application => $value, ..., LaunchConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DeploymentApplicationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Application

=head1 DESCRIPTION

Information about a deployment application configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

  The Amazon Resource Name (ARN) of the robot application.


=head2 B<REQUIRED> ApplicationVersion => Str

  The version of the application.


=head2 B<REQUIRED> LaunchConfig => Robomaker_DeploymentLaunchConfig

  The launch configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

