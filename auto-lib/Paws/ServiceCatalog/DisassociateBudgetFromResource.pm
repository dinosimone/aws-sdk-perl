
package Paws::ServiceCatalog::DisassociateBudgetFromResource;
  use Moose;
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateBudgetFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DisassociateBudgetFromResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DisassociateBudgetFromResource - Arguments for method DisassociateBudgetFromResource on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateBudgetFromResource on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DisassociateBudgetFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateBudgetFromResource.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DisassociateBudgetFromResourceOutput =
      $servicecatalog->DisassociateBudgetFromResource(
      BudgetName => 'MyBudgetName',
      ResourceId => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DisassociateBudgetFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BudgetName => Str

The name of the budget you want to disassociate.



=head2 B<REQUIRED> ResourceId => Str

The resource identifier you want to disassociate from. Either a
portfolio-id or a product-id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateBudgetFromResource in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

