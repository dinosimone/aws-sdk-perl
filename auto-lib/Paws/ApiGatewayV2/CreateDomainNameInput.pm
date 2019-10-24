# Generated from default/object.tt
package Paws::ApiGatewayV2::CreateDomainNameInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_DomainNameConfiguration ApiGatewayV2_Tags/;
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has DomainNameConfigurations => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainNameConfiguration]);
  has Tags => (is => 'ro', isa => ApiGatewayV2_Tags);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::ApiGatewayV2::Tags',
                           'type' => 'ApiGatewayV2_Tags'
                         },
               'DomainNameConfigurations' => {
                                               'class' => 'Paws::ApiGatewayV2::DomainNameConfiguration',
                                               'type' => 'ArrayRef[ApiGatewayV2_DomainNameConfiguration]'
                                             },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'DomainNameConfigurations' => 'domainNameConfigurations',
                       'DomainName' => 'domainName'
                     },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDomainNameInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateDomainNameInput object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateDomainNameInput object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Represents the input parameters for a CreateDomainName request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  The domain name.


=head2 DomainNameConfigurations => ArrayRef[ApiGatewayV2_DomainNameConfiguration]

  The domain name configurations.


=head2 Tags => ApiGatewayV2_Tags

  The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with aws:. The tag value can be up to 256 characters..



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

