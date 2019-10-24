
package Paws::Greengrass::ListSubscriptionDefinitionVersions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has MaxResults => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SubscriptionDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListSubscriptionDefinitionVersions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::ListSubscriptionDefinitionVersionsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubscriptionDefinitionId' => {
                                               'type' => 'Str'
                                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'SubscriptionDefinitionId' => 'SubscriptionDefinitionId'
                  },
  'ParamInQuery' => {
                      'NextToken' => 'NextToken',
                      'MaxResults' => 'MaxResults'
                    },
  'IsRequired' => {
                    'SubscriptionDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListSubscriptionDefinitionVersions - Arguments for method ListSubscriptionDefinitionVersions on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptionDefinitionVersions on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method ListSubscriptionDefinitionVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptionDefinitionVersions.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $ListSubscriptionDefinitionVersionsResponse =
      $greengrass->ListSubscriptionDefinitionVersions(
      SubscriptionDefinitionId => 'My__string',
      MaxResults               => 'My__string',    # OPTIONAL
      NextToken                => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSubscriptionDefinitionVersionsResponse->NextToken;
    my $Versions  = $ListSubscriptionDefinitionVersionsResponse->Versions;

# Returns a L<Paws::Greengrass::ListSubscriptionDefinitionVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListSubscriptionDefinitionVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Str

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.



=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptionDefinitionVersions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

