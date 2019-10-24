# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::SearchProductsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProductViewAggregations ServiceCatalog_ProductViewSummary/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProductViewAggregations => (is => 'ro', isa => ServiceCatalog_ProductViewAggregations);
  has ProductViewSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProductViewSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProductViewSummaries' => {
                                           'class' => 'Paws::ServiceCatalog::ProductViewSummary',
                                           'type' => 'ArrayRef[ServiceCatalog_ProductViewSummary]'
                                         },
               'ProductViewAggregations' => {
                                              'class' => 'Paws::ServiceCatalog::ProductViewAggregations',
                                              'type' => 'ServiceCatalog_ProductViewAggregations'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProductViewAggregations => ServiceCatalog_ProductViewAggregations

The product view aggregations.


=head2 ProductViewSummaries => ArrayRef[ServiceCatalog_ProductViewSummary]

Information about the product views.


=head2 _request_id => Str


=cut

1;