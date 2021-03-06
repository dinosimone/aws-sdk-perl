
package Paws::Amplify::ListDomainAssociations;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::ListDomainAssociationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListDomainAssociations - Arguments for method ListDomainAssociations on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainAssociations on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method ListDomainAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainAssociations.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $ListDomainAssociationsResult = $amplify->ListDomainAssociations(
      AppId      => 'MyAppId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DomainAssociations = $ListDomainAssociationsResult->DomainAssociations;
    my $NextToken          = $ListDomainAssociationsResult->NextToken;

    # Returns a L<Paws::Amplify::ListDomainAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/ListDomainAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 MaxResults => Int

Maximum number of records to list in a single response.



=head2 NextToken => Str

Pagination token. Set to null to start listing Apps from start. If
non-null pagination token is returned in a result, then pass its value
in here to list more projects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainAssociations in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

