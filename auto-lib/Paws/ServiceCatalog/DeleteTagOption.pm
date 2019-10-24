# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::DeleteTagOption;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTagOption');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::DeleteTagOptionOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DeleteTagOption - Arguments for method DeleteTagOption on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTagOption on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DeleteTagOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTagOption.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DeleteTagOptionOutput = $servicecatalog->DeleteTagOption(
      Id => 'MyTagOptionId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DeleteTagOption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The TagOption identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTagOption in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

