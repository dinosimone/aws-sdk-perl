
package Paws::ManagedBlockchain::ListProposalVotes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProposalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'proposalId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProposalVotes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/proposals/{proposalId}/votes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::ListProposalVotesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposalVotes - Arguments for method ListProposalVotes on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProposalVotes on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListProposalVotes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProposalVotes.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListProposalVotesOutput = $managedblockchain->ListProposalVotes(
      NetworkId  => 'MyResourceIdString',
      ProposalId => 'MyResourceIdString',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListProposalVotesOutput->NextToken;
    my $ProposalVotes = $ListProposalVotesOutput->ProposalVotes;

    # Returns a L<Paws::ManagedBlockchain::ListProposalVotesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListProposalVotes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of votes to return.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 B<REQUIRED> ProposalId => Str

The unique identifier of the proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProposalVotes in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

