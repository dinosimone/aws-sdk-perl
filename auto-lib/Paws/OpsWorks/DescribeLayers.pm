# Generated from json/callargs_class.tt

package Paws::OpsWorks::DescribeLayers;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::OpsWorks::Types qw//;
  has LayerIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has StackId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeLayers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::OpsWorks::DescribeLayersResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LayerIds' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'StackId' => {
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

Paws::OpsWorks::DescribeLayers - Arguments for method DescribeLayers on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLayers on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeLayers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLayers.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeLayersResult = $opsworks->DescribeLayers(
      LayerIds => [ 'MyString', ... ],    # OPTIONAL
      StackId => 'MyString',              # OPTIONAL
    );

    # Results:
    my $Layers = $DescribeLayersResult->Layers;

    # Returns a L<Paws::OpsWorks::DescribeLayersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeLayers>

=head1 ATTRIBUTES


=head2 LayerIds => ArrayRef[Str|Undef]

An array of layer IDs that specify the layers to be described. If you
omit this parameter, C<DescribeLayers> returns a description of every
layer in the specified stack.



=head2 StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLayers in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

