
package Paws::ES::ListElasticsearchInstanceTypes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ES::Types qw//;
  has DomainName => (is => 'ro', isa => Str, predicate => 1);
  has ElasticsearchVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListElasticsearchInstanceTypes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-01-01/es/instanceTypes/{ElasticsearchVersion}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ES::ListElasticsearchInstanceTypesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticsearchVersion' => {
                                           'type' => 'Str'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInURI' => {
                    'ElasticsearchVersion' => 'ElasticsearchVersion'
                  },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'DomainName' => 'domainName',
                      'MaxResults' => 'maxResults'
                    },
  'IsRequired' => {
                    'ElasticsearchVersion' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListElasticsearchInstanceTypes - Arguments for method ListElasticsearchInstanceTypes on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListElasticsearchInstanceTypes on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method ListElasticsearchInstanceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListElasticsearchInstanceTypes.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $ListElasticsearchInstanceTypesResponse =
      $es->ListElasticsearchInstanceTypes(
      ElasticsearchVersion => 'MyElasticsearchVersionString',
      DomainName           => 'MyDomainName',                   # OPTIONAL
      MaxResults           => 1,                                # OPTIONAL
      NextToken            => 'MyNextToken',                    # OPTIONAL
      );

    # Results:
    my $ElasticsearchInstanceTypes =
      $ListElasticsearchInstanceTypesResponse->ElasticsearchInstanceTypes;
    my $NextToken = $ListElasticsearchInstanceTypesResponse->NextToken;

    # Returns a L<Paws::ES::ListElasticsearchInstanceTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/ListElasticsearchInstanceTypes>

=head1 ATTRIBUTES


=head2 DomainName => Str

DomainName represents the name of the Domain that we are trying to
modify. This should be present only if we are querying for list of
available Elasticsearch instance types when modifying existing domain.



=head2 B<REQUIRED> ElasticsearchVersion => Str

Version of Elasticsearch for which list of supported elasticsearch
instance types are needed.



=head2 MaxResults => Int

Set this value to limit the number of results returned. Value provided
must be greater than 30 else it wont be honored.



=head2 NextToken => Str

NextToken should be sent in case if earlier API call produced result
containing NextToken. It is used for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListElasticsearchInstanceTypes in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

