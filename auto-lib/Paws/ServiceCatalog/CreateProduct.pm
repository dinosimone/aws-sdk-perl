# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::CreateProduct;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag ServiceCatalog_ProvisioningArtifactProperties/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Distributor => (is => 'ro', isa => Str, predicate => 1);
  has IdempotencyToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Owner => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProductType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProvisioningArtifactParameters => (is => 'ro', isa => ServiceCatalog_ProvisioningArtifactProperties, required => 1, predicate => 1);
  has SupportDescription => (is => 'ro', isa => Str, predicate => 1);
  has SupportEmail => (is => 'ro', isa => Str, predicate => 1);
  has SupportUrl => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateProduct');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::CreateProductOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SupportDescription' => {
                                         'type' => 'Str'
                                       },
               'IdempotencyToken' => {
                                       'type' => 'Str'
                                     },
               'SupportEmail' => {
                                   'type' => 'Str'
                                 },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'Owner' => {
                            'type' => 'Str'
                          },
               'SupportUrl' => {
                                 'type' => 'Str'
                               },
               'Distributor' => {
                                  'type' => 'Str'
                                },
               'ProvisioningArtifactParameters' => {
                                                     'class' => 'Paws::ServiceCatalog::ProvisioningArtifactProperties',
                                                     'type' => 'ServiceCatalog_ProvisioningArtifactProperties'
                                                   },
               'Tags' => {
                           'class' => 'Paws::ServiceCatalog::Tag',
                           'type' => 'ArrayRef[ServiceCatalog_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'ProductType' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Owner' => 1,
                    'ProvisioningArtifactParameters' => 1,
                    'IdempotencyToken' => 1,
                    'Name' => 1,
                    'ProductType' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProduct - Arguments for method CreateProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateProductOutput = $servicecatalog->CreateProduct(
      IdempotencyToken               => 'MyIdempotencyToken',
      Name                           => 'MyProductViewName',
      Owner                          => 'MyProductViewOwner',
      ProductType                    => 'CLOUD_FORMATION_TEMPLATE',
      ProvisioningArtifactParameters => {
        Info => {
          'MyProvisioningArtifactInfoKey' => 'MyProvisioningArtifactInfoValue',
        },    # min: 1, max: 100
        Description => 'MyProvisioningArtifactDescription',    # OPTIONAL
        DisableTemplateValidation => 1,                               # OPTIONAL
        Name                      => 'MyProvisioningArtifactName',    # OPTIONAL
        Type                      => 'CLOUD_FORMATION_TEMPLATE'
        , # values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR; OPTIONAL
      },
      AcceptLanguage     => 'MyAcceptLanguage',                 # OPTIONAL
      Description        => 'MyProductViewShortDescription',    # OPTIONAL
      Distributor        => 'MyProductViewOwner',               # OPTIONAL
      SupportDescription => 'MySupportDescription',             # OPTIONAL
      SupportEmail       => 'MySupportEmail',                   # OPTIONAL
      SupportUrl         => 'MySupportUrl',                     # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $ProductViewDetail = $CreateProductOutput->ProductViewDetail;
    my $ProvisioningArtifactDetail =
      $CreateProductOutput->ProvisioningArtifactDetail;
    my $Tags = $CreateProductOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::CreateProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateProduct>

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




=head2 Description => Str

The description of the product.



=head2 Distributor => Str

The distributor of the product.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> Name => Str

The name of the product.



=head2 B<REQUIRED> Owner => Str

The owner of the product.



=head2 B<REQUIRED> ProductType => Str

The type of product.

Valid values are: C<"CLOUD_FORMATION_TEMPLATE">, C<"MARKETPLACE">

=head2 B<REQUIRED> ProvisioningArtifactParameters => ServiceCatalog_ProvisioningArtifactProperties

The configuration of the provisioning artifact.



=head2 SupportDescription => Str

The support information about the product.



=head2 SupportEmail => Str

The contact email for product support.



=head2 SupportUrl => Str

The contact URL for product support.



=head2 Tags => ArrayRef[ServiceCatalog_Tag]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

