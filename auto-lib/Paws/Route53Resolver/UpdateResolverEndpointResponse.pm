
package Paws::Route53Resolver::UpdateResolverEndpointResponse;
  use Moose;
  has ResolverEndpoint => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverEndpointResponse

=head1 ATTRIBUTES


=head2 ResolverEndpoint => L<Paws::Route53Resolver::ResolverEndpoint>

The response to an C<UpdateResolverEndpoint> request.


=head2 _request_id => Str


=cut

1;