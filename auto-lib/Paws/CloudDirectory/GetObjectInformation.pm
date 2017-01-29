
package Paws::CloudDirectory::GetObjectInformation;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-consistency-level' );
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition' , required => 1);
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectInformation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/information');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::GetObjectInformationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetObjectInformation - Arguments for method GetObjectInformation on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectInformation on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method GetObjectInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectInformation.

As an example:

  $service_obj->GetObjectInformation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

The consistency level at which to retrieve the object information.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory being retrieved.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectInformation in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

