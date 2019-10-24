# Generated from default/object.tt
package Paws::SecurityHub::Product;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SecurityHub::Types qw//;
  has ActivationUrl => (is => 'ro', isa => Str);
  has Categories => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CompanyName => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has MarketplaceUrl => (is => 'ro', isa => Str);
  has ProductArn => (is => 'ro', isa => Str, required => 1);
  has ProductName => (is => 'ro', isa => Str);
  has ProductSubscriptionResourcePolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Categories' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ProductSubscriptionResourcePolicy' => {
                                                        'type' => 'Str'
                                                      },
               'ProductArn' => {
                                 'type' => 'Str'
                               },
               'MarketplaceUrl' => {
                                     'type' => 'Str'
                                   },
               'CompanyName' => {
                                  'type' => 'Str'
                                },
               'ActivationUrl' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ProductName' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ProductArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Product

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Product object:

  $service_obj->Method(Att1 => { ActivationUrl => $value, ..., ProductSubscriptionResourcePolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Product object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivationUrl

=head1 DESCRIPTION

Contains details about a product.

=head1 ATTRIBUTES


=head2 ActivationUrl => Str

  The URL used to activate the product.


=head2 Categories => ArrayRef[Str|Undef]

  The categories assigned to the product.


=head2 CompanyName => Str

  The name of the company that provides the product.


=head2 Description => Str

  A description of the product.


=head2 MarketplaceUrl => Str

  The URL for the page that contains more information about the product.


=head2 B<REQUIRED> ProductArn => Str

  The ARN assigned to the product.


=head2 ProductName => Str

  The name of the product.


=head2 ProductSubscriptionResourcePolicy => Str

  The resource policy associated with the product.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

