# Generated from json/callargs_class.tt

package Paws::OpsWorksCM::DescribeAccountAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAccountAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::OpsWorksCM::DescribeAccountAttributesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeAccountAttributes - Arguments for method DescribeAccountAttributes on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountAttributes on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DescribeAccountAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountAttributes.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DescribeAccountAttributesResponse =
      $opsworks -cm->DescribeAccountAttributes();

    # Results:
    my $Attributes = $DescribeAccountAttributesResponse->Attributes;

    # Returns a L<Paws::OpsWorksCM::DescribeAccountAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DescribeAccountAttributes.html>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountAttributes in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

