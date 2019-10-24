
package Paws::ApiGateway::GetRestApis;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ApiGateway::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has Position => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetRestApis');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::RestApis');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'ParamInQuery' => {
                      'Position' => 'position',
                      'Limit' => 'limit'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetRestApis - Arguments for method GetRestApis on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRestApis on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetRestApis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRestApis.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApis = $apigateway->GetRestApis(
      Limit    => 1,             # OPTIONAL
      Position => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items    = $RestApis->Items;
    my $Position = $RestApis->Position;

    # Returns a L<Paws::ApiGateway::RestApis> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetRestApis>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRestApis in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

