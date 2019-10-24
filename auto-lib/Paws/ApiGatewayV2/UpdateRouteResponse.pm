
package Paws::ApiGatewayV2::UpdateRouteResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_RouteModels ApiGatewayV2_RouteParameters/;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ModelSelectionExpression => (is => 'ro', isa => Str, predicate => 1);
  has ResponseModels => (is => 'ro', isa => ApiGatewayV2_RouteModels, predicate => 1);
  has ResponseParameters => (is => 'ro', isa => ApiGatewayV2_RouteParameters, predicate => 1);
  has RouteId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteResponseId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteResponseKey => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRouteResponse');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGatewayV2::UpdateRouteResponseResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResponseModels' => {
                                     'class' => 'Paws::ApiGatewayV2::RouteModels',
                                     'type' => 'ApiGatewayV2_RouteModels'
                                   },
               'RouteResponseId' => {
                                      'type' => 'Str'
                                    },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'ResponseParameters' => {
                                         'class' => 'Paws::ApiGatewayV2::RouteParameters',
                                         'type' => 'ApiGatewayV2_RouteParameters'
                                       },
               'ModelSelectionExpression' => {
                                               'type' => 'Str'
                                             },
               'RouteId' => {
                              'type' => 'Str'
                            },
               'RouteResponseKey' => {
                                       'type' => 'Str'
                                     }
             },
  'ParamInURI' => {
                    'RouteResponseId' => 'routeResponseId',
                    'ApiId' => 'apiId',
                    'RouteId' => 'routeId'
                  },
  'NameInRequest' => {
                       'ResponseModels' => 'responseModels',
                       'ResponseParameters' => 'responseParameters',
                       'ModelSelectionExpression' => 'modelSelectionExpression',
                       'RouteResponseKey' => 'routeResponseKey'
                     },
  'IsRequired' => {
                    'RouteResponseId' => 1,
                    'ApiId' => 1,
                    'RouteId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateRouteResponse - Arguments for method UpdateRouteResponse on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRouteResponse on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateRouteResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRouteResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateRouteResponseResponse = $apigateway->UpdateRouteResponse(
      ApiId                    => 'My__string',
      RouteId                  => 'My__string',
      RouteResponseId          => 'My__string',
      ModelSelectionExpression => 'MySelectionExpression',    # OPTIONAL
      ResponseModels => { 'My__string' => 'MyStringWithLengthBetween1And128', }
      ,                                                       # OPTIONAL
      ResponseParameters => {
        'My__string' => {
          Required => 1,                                      # OPTIONAL
        },
      },    # OPTIONAL
      RouteResponseKey => 'MySelectionKey',    # OPTIONAL
    );

    # Results:
    my $ModelSelectionExpression =
      $UpdateRouteResponseResponse->ModelSelectionExpression;
    my $ResponseModels     = $UpdateRouteResponseResponse->ResponseModels;
    my $ResponseParameters = $UpdateRouteResponseResponse->ResponseParameters;
    my $RouteResponseId    = $UpdateRouteResponseResponse->RouteResponseId;
    my $RouteResponseKey   = $UpdateRouteResponseResponse->RouteResponseKey;

    # Returns a L<Paws::ApiGatewayV2::UpdateRouteResponseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateRouteResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ModelSelectionExpression => Str

The model selection expression for the route response.



=head2 ResponseModels => ApiGatewayV2_RouteModels

The response models for the route response.



=head2 ResponseParameters => ApiGatewayV2_RouteParameters

The route response parameters.



=head2 B<REQUIRED> RouteId => Str

The route ID.



=head2 B<REQUIRED> RouteResponseId => Str

The route response ID.



=head2 RouteResponseKey => Str

The route response key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRouteResponse in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

