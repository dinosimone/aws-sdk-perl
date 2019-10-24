# Generated from json/callargs_class.tt

package Paws::Glue::GetUserDefinedFunction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FunctionName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetUserDefinedFunction');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetUserDefinedFunctionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FunctionName' => {
                                   'type' => 'Str'
                                 },
               'CatalogId' => {
                                'type' => 'Str'
                              },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'FunctionName' => 1,
                    'DatabaseName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunction - Arguments for method GetUserDefinedFunction on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserDefinedFunction on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetUserDefinedFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserDefinedFunction.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetUserDefinedFunctionResponse = $glue->GetUserDefinedFunction(
      DatabaseName => 'MyNameString',
      FunctionName => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
    );

    # Results:
    my $UserDefinedFunction =
      $GetUserDefinedFunctionResponse->UserDefinedFunction;

    # Returns a L<Paws::Glue::GetUserDefinedFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetUserDefinedFunction>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the function to be retrieved is
located. If none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the function is located.



=head2 B<REQUIRED> FunctionName => Str

The name of the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserDefinedFunction in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

