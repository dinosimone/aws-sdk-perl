
package Paws::AppSync::CreateApiKey;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppSync::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Expires => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApiKey');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/apikeys');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::CreateApiKeyResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApiId' => {
                            'type' => 'Str'
                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Expires' => {
                              'type' => 'Int'
                            }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  },
  'NameInRequest' => {
                       'Description' => 'description',
                       'Expires' => 'expires'
                     },
  'IsRequired' => {
                    'ApiId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiKey - Arguments for method CreateApiKey on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiKey on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiKey.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateApiKeyResponse = $appsync->CreateApiKey(
      ApiId       => 'MyString',
      Description => 'MyString',    # OPTIONAL
      Expires     => 1,             # OPTIONAL
    );

    # Results:
    my $ApiKey = $CreateApiKeyResponse->ApiKey;

    # Returns a L<Paws::AppSync::CreateApiKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID for your GraphQL API.



=head2 Description => Str

A description of the purpose of the API key.



=head2 Expires => Int

The time from creation time after which the API key expires. The date
is represented as seconds since the epoch, rounded down to the nearest
hour. The default value for this parameter is 7 days from creation
time. For more information, see .




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiKey in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

