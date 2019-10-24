
package Paws::IoT::DescribeBillingGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has BillingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeBillingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/billing-groups/{billingGroupName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DescribeBillingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     }
             },
  'ParamInURI' => {
                    'BillingGroupName' => 'billingGroupName'
                  },
  'IsRequired' => {
                    'BillingGroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeBillingGroup - Arguments for method DescribeBillingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBillingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBillingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeBillingGroupResponse = $iot->DescribeBillingGroup(
      BillingGroupName => 'MyBillingGroupName',

    );

    # Results:
    my $BillingGroupArn = $DescribeBillingGroupResponse->BillingGroupArn;
    my $BillingGroupId  = $DescribeBillingGroupResponse->BillingGroupId;
    my $BillingGroupMetadata =
      $DescribeBillingGroupResponse->BillingGroupMetadata;
    my $BillingGroupName = $DescribeBillingGroupResponse->BillingGroupName;
    my $BillingGroupProperties =
      $DescribeBillingGroupResponse->BillingGroupProperties;
    my $Version = $DescribeBillingGroupResponse->Version;

    # Returns a L<Paws::IoT::DescribeBillingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingGroupName => Str

The name of the billing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBillingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

