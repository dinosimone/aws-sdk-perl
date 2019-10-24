
package Paws::ApiGateway::DeleteVpcLink;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has VpcLinkId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteVpcLink');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/vpclinks/{vpclink_id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcLinkId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'VpcLinkId' => 'vpclink_id'
                  },
  'IsRequired' => {
                    'VpcLinkId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteVpcLink - Arguments for method DeleteVpcLink on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcLink on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteVpcLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcLink.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteVpcLink(
      VpcLinkId => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteVpcLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcLinkId => Str

[Required] The identifier of the VpcLink. It is used in an Integration
to reference this VpcLink.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcLink in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

