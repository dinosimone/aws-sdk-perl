# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::ListPortfoliosForProduct;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ServiceCatalog::Types qw//;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has PageToken => (is => 'ro', isa => Str, predicate => 1);
  has ProductId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListPortfoliosForProduct');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::ListPortfoliosForProductOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageSize' => {
                               'type' => 'Int'
                             },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'PageToken' => {
                                'type' => 'Str'
                              },
               'ProductId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ProductId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListPortfoliosForProduct - Arguments for method ListPortfoliosForProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPortfoliosForProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ListPortfoliosForProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPortfoliosForProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ListPortfoliosForProductOutput =
      $servicecatalog->ListPortfoliosForProduct(
      ProductId      => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      PageSize       => 1,                     # OPTIONAL
      PageToken      => 'MyPageToken',         # OPTIONAL
      );

    # Results:
    my $NextPageToken    = $ListPortfoliosForProductOutput->NextPageToken;
    my $PortfolioDetails = $ListPortfoliosForProductOutput->PortfolioDetails;

    # Returns a L<Paws::ServiceCatalog::ListPortfoliosForProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ListPortfoliosForProduct>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 B<REQUIRED> ProductId => Str

The product identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPortfoliosForProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

