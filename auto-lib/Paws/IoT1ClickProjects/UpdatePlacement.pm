
package Paws::IoT1ClickProjects::UpdatePlacement;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_PlacementAttributeMap/;
  has Attributes => (is => 'ro', isa => IoT1ClickProjects_PlacementAttributeMap, predicate => 1);
  has PlacementName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdatePlacement');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/projects/{projectName}/placements/{placementName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT1ClickProjects::UpdatePlacementResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlacementName' => {
                                    'type' => 'Str'
                                  },
               'Attributes' => {
                                 'class' => 'Paws::IoT1ClickProjects::PlacementAttributeMap',
                                 'type' => 'IoT1ClickProjects_PlacementAttributeMap'
                               },
               'ProjectName' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'PlacementName' => 'placementName',
                    'ProjectName' => 'projectName'
                  },
  'NameInRequest' => {
                       'Attributes' => 'attributes'
                     },
  'IsRequired' => {
                    'PlacementName' => 1,
                    'ProjectName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::UpdatePlacement - Arguments for method UpdatePlacement on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePlacement on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method UpdatePlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePlacement.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $UpdatePlacementResponse = $projects . iot1click->UpdatePlacement(
      PlacementName => 'MyPlacementName',
      ProjectName   => 'MyProjectName',
      Attributes    => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 128, value: max: 800
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/UpdatePlacement>

=head1 ATTRIBUTES


=head2 Attributes => IoT1ClickProjects_PlacementAttributeMap

The user-defined object of attributes used to update the placement. The
maximum number of key/value pairs is 50.



=head2 B<REQUIRED> PlacementName => Str

The name of the placement to update.



=head2 B<REQUIRED> ProjectName => Str

The name of the project containing the placement to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePlacement in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

