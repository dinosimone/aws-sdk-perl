
package Paws::AppSync::CreateFunction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DataSourceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has FunctionVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequestMappingTemplate => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResponseMappingTemplate => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/functions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::CreateFunctionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestMappingTemplate' => {
                                             'type' => 'Str'
                                           },
               'FunctionVersion' => {
                                      'type' => 'Str'
                                    },
               'DataSourceName' => {
                                     'type' => 'Str'
                                   },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ResponseMappingTemplate' => {
                                              'type' => 'Str'
                                            }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  },
  'NameInRequest' => {
                       'RequestMappingTemplate' => 'requestMappingTemplate',
                       'FunctionVersion' => 'functionVersion',
                       'DataSourceName' => 'dataSourceName',
                       'Name' => 'name',
                       'Description' => 'description',
                       'ResponseMappingTemplate' => 'responseMappingTemplate'
                     },
  'IsRequired' => {
                    'RequestMappingTemplate' => 1,
                    'FunctionVersion' => 1,
                    'DataSourceName' => 1,
                    'ApiId' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateFunction - Arguments for method CreateFunction on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunction on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateFunctionResponse = $appsync->CreateFunction(
      ApiId                   => 'MyString',
      DataSourceName          => 'MyResourceName',
      FunctionVersion         => 'MyString',
      Name                    => 'MyResourceName',
      RequestMappingTemplate  => 'MyMappingTemplate',
      Description             => 'MyString',             # OPTIONAL
      ResponseMappingTemplate => 'MyMappingTemplate',    # OPTIONAL
    );

    # Results:
    my $FunctionConfiguration = $CreateFunctionResponse->FunctionConfiguration;

    # Returns a L<Paws::AppSync::CreateFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The GraphQL API ID.



=head2 B<REQUIRED> DataSourceName => Str

The C<Function> C<DataSource> name.



=head2 Description => Str

The C<Function> description.



=head2 B<REQUIRED> FunctionVersion => Str

The C<version> of the request mapping template. Currently the supported
value is 2018-05-29.



=head2 B<REQUIRED> Name => Str

The C<Function> name. The function name does not have to be unique.



=head2 B<REQUIRED> RequestMappingTemplate => Str

The C<Function> request mapping template. Functions support only the
2018-05-29 version of the request mapping template.



=head2 ResponseMappingTemplate => Str

The C<Function> response mapping template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

