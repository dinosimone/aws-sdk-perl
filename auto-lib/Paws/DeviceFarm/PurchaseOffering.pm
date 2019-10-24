# Generated from json/callargs_class.tt

package Paws::DeviceFarm::PurchaseOffering;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DeviceFarm::Types qw//;
  has OfferingId => (is => 'ro', isa => Str, predicate => 1);
  has OfferingPromotionId => (is => 'ro', isa => Str, predicate => 1);
  has Quantity => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PurchaseOffering');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::PurchaseOfferingResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OfferingPromotionId' => {
                                          'type' => 'Str'
                                        },
               'OfferingId' => {
                                 'type' => 'Str'
                               },
               'Quantity' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'OfferingPromotionId' => 'offeringPromotionId',
                       'OfferingId' => 'offeringId',
                       'Quantity' => 'quantity'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::PurchaseOffering - Arguments for method PurchaseOffering on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseOffering on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method PurchaseOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseOffering.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To purchase a device slot offering
    # The following example purchases a specific device slot offering.
    my $PurchaseOfferingResult = $devicefarm->PurchaseOffering(
      'OfferingId' => 'D68B3C05-1BA6-4360-BC69-12345EXAMPLE',
      'Quantity'   => 1
    );

    # Results:
    my $offeringTransaction = $PurchaseOfferingResult->offeringTransaction;

    # Returns a L<Paws::DeviceFarm::PurchaseOfferingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/PurchaseOffering>

=head1 ATTRIBUTES


=head2 OfferingId => Str

The ID of the offering.



=head2 OfferingPromotionId => Str

The ID of the offering promotion to be applied to the purchase.



=head2 Quantity => Int

The number of device slots you wish to purchase in an offering request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseOffering in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

