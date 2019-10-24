# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeProductOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_BudgetDetail ServiceCatalog_ProvisioningArtifact ServiceCatalog_ProductViewSummary/;
  has Budgets => (is => 'ro', isa => ArrayRef[ServiceCatalog_BudgetDetail]);
  has ProductViewSummary => (is => 'ro', isa => ServiceCatalog_ProductViewSummary);
  has ProvisioningArtifacts => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifact]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Budgets' => {
                              'class' => 'Paws::ServiceCatalog::BudgetDetail',
                              'type' => 'ArrayRef[ServiceCatalog_BudgetDetail]'
                            },
               'ProvisioningArtifacts' => {
                                            'class' => 'Paws::ServiceCatalog::ProvisioningArtifact',
                                            'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifact]'
                                          },
               'ProductViewSummary' => {
                                         'class' => 'Paws::ServiceCatalog::ProductViewSummary',
                                         'type' => 'ServiceCatalog_ProductViewSummary'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[ServiceCatalog_BudgetDetail]

Information about the associated budgets.


=head2 ProductViewSummary => ServiceCatalog_ProductViewSummary

Summary information about the product view.


=head2 ProvisioningArtifacts => ArrayRef[ServiceCatalog_ProvisioningArtifact]

Information about the provisioning artifacts for the specified product.


=head2 _request_id => Str


=cut

1;