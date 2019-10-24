
package Paws::ApiGatewayV2::UpdateRouteResponseResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ModelSelectionExpression => (is => 'ro', isa => Str);
  has ResponseModels => (is => 'ro', isa => ApiGatewayV2_RouteModels);
  has ResponseParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters);
  has RouteResponseId => (is => 'ro', isa => Str);
  has RouteResponseKey => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResponseModels' => {
                                     'class' => 'Paws::ApiGatewayV2::RouteModels',
                                     'type' => 'ApiGatewayV2_RouteModels'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RouteResponseId' => {
                                      'type' => 'Str'
                                    },
               'ResponseParameters' => {
                                         'class' => 'Paws::ApiGatewayV2::RouteParameters',
                                         'type' => 'ApiGatewayV2_RouteParameters'
                                       },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RouteResponseKey' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'ResponseModels' => 'responseModels',
                       'RouteResponseId' => 'routeResponseId',
                       'ResponseParameters' => 'responseParameters',
                       'ModelSelectionExpression' => 'modelSelectionExpression',
                       'RouteResponseKey' => 'routeResponseKey'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateRouteResponseResponse

=head1 ATTRIBUTES


=head2 ModelSelectionExpression => Str

Represents the model selection expression of a route response.


=head2 ResponseModels => ApiGatewayV2_RouteModels

Represents the response models of a route response.


=head2 ResponseParameters => ApiGatewayV2_RouteParameters

Represents the response parameters of a route response.


=head2 RouteResponseId => Str

Represents the identifier of a route response.


=head2 RouteResponseKey => Str

Represents the route response key of a route response.


=head2 _request_id => Str


=cut

