
package Paws::IoT::DescribeAuthorizer;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AuthorizerName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAuthorizer');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/authorizer/{authorizerName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DescribeAuthorizerResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizerName' => {
                                     'type' => 'Str'
                                   }
             },
  'ParamInURI' => {
                    'AuthorizerName' => 'authorizerName'
                  },
  'IsRequired' => {
                    'AuthorizerName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuthorizer - Arguments for method DescribeAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeAuthorizerResponse = $iot->DescribeAuthorizer(
      AuthorizerName => 'MyAuthorizerName',

    );

    # Results:
    my $AuthorizerDescription =
      $DescribeAuthorizerResponse->AuthorizerDescription;

    # Returns a L<Paws::IoT::DescribeAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerName => Str

The name of the authorizer to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

