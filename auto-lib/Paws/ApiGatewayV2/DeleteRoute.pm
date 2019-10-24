
package Paws::ApiGatewayV2::DeleteRoute;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RouteId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteRoute');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/apis/{apiId}/routes/{routeId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiId' => {
                            'type' => 'Str'
                          },
               'RouteId' => {
                              'type' => 'Str'
                            }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId',
                    'RouteId' => 'routeId'
                  },
  'IsRequired' => {
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

Paws::ApiGatewayV2::DeleteRoute - Arguments for method DeleteRoute on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRoute on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method DeleteRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRoute.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    $apigateway->DeleteRoute(
      ApiId   => 'My__string',
      RouteId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> RouteId => Str

The route ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRoute in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

