
package Paws::Glacier::PurchaseProvisionedCapacity;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PurchaseProvisionedCapacity');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{accountId}/provisioned-capacity');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glacier::PurchaseProvisionedCapacityOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'AccountId' => 'accountId'
                  },
  'IsRequired' => {
                    'AccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::PurchaseProvisionedCapacity - Arguments for method PurchaseProvisionedCapacity on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseProvisionedCapacity on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method PurchaseProvisionedCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseProvisionedCapacity.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To purchases a provisioned capacity unit for an AWS account
    # The example purchases provisioned capacity unit for an AWS account.
    my $PurchaseProvisionedCapacityOutput =
      $glacier->PurchaseProvisionedCapacity( 'AccountId' => '-' );

    # Results:
    my $capacityId = $PurchaseProvisionedCapacityOutput->capacityId;

    # Returns a L<Paws::Glacier::PurchaseProvisionedCapacityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/PurchaseProvisionedCapacity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the account that owns the vault. You can either
specify an AWS account ID or optionally a single '-' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, don't
include any hyphens ('-') in the ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseProvisionedCapacity in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

