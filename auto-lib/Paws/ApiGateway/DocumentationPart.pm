
package Paws::ApiGateway::DocumentationPart;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_DocumentationPartLocation/;
  has Id => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => ApiGateway_DocumentationPartLocation);
  has Properties => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Properties' => {
                                 'type' => 'Str'
                               },
               'Location' => {
                               'class' => 'Paws::ApiGateway::DocumentationPartLocation',
                               'type' => 'ApiGateway_DocumentationPartLocation'
                             }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Properties' => 'properties',
                       'Location' => 'location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationPart

=head1 ATTRIBUTES


=head2 Id => Str

The DocumentationPart identifier, generated by API Gateway when the
C<DocumentationPart> is created.


=head2 Location => ApiGateway_DocumentationPartLocation

The location of the API entity to which the documentation applies.
Valid fields depend on the targeted API entity type. All the valid
location fields are not required. If not explicitly specified, a valid
location field is treated as a wildcard and associated documentation
content may be inherited by matching entities, unless overridden.


=head2 Properties => Str

A content map of API-specific key-value pairs describing the targeted
API entity. The map must be encoded as a JSON string, e.g., C<"{
\"description\": \"The API does ...\" }">. Only OpenAPI-compliant
documentation-related fields from the properties map are exported and,
hence, published as part of the API entity definitions, while the
original documentation parts are exported in a OpenAPI extension of
C<x-amazon-apigateway-documentation>.


=head2 _request_id => Str


=cut

