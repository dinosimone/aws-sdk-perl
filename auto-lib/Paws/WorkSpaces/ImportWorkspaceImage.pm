# Generated from json/callargs_class.tt

package Paws::WorkSpaces::ImportWorkspaceImage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Tag/;
  has Ec2ImageId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ImageDescription => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ImageName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IngestionProcess => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WorkSpaces_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportWorkspaceImage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::ImportWorkspaceImageResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IngestionProcess' => {
                                       'type' => 'Str'
                                     },
               'ImageName' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::WorkSpaces::Tag',
                           'type' => 'ArrayRef[WorkSpaces_Tag]'
                         },
               'ImageDescription' => {
                                       'type' => 'Str'
                                     },
               'Ec2ImageId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'IngestionProcess' => 1,
                    'ImageName' => 1,
                    'ImageDescription' => 1,
                    'Ec2ImageId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ImportWorkspaceImage - Arguments for method ImportWorkspaceImage on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportWorkspaceImage on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ImportWorkspaceImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportWorkspaceImage.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ImportWorkspaceImageResult = $workspaces->ImportWorkspaceImage(
      Ec2ImageId       => 'MyEc2ImageId',
      ImageDescription => 'MyWorkspaceImageDescription',
      ImageName        => 'MyWorkspaceImageName',
      IngestionProcess => 'BYOL_REGULAR',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $ImageId = $ImportWorkspaceImageResult->ImageId;

    # Returns a L<Paws::WorkSpaces::ImportWorkspaceImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ImportWorkspaceImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ec2ImageId => Str

The identifier of the EC2 image.



=head2 B<REQUIRED> ImageDescription => Str

The description of the WorkSpace image.



=head2 B<REQUIRED> ImageName => Str

The name of the WorkSpace image.



=head2 B<REQUIRED> IngestionProcess => Str

The ingestion process to be used when importing the image.

Valid values are: C<"BYOL_REGULAR">, C<"BYOL_GRAPHICS">, C<"BYOL_GRAPHICSPRO">

=head2 Tags => ArrayRef[WorkSpaces_Tag]

The tags. Each WorkSpaces resource can have a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportWorkspaceImage in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

