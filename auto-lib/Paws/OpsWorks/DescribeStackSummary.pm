# Generated from json/callargs_class.tt

package Paws::OpsWorks::DescribeStackSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has StackId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeStackSummary');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::OpsWorks::DescribeStackSummaryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackId' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'StackId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStackSummary - Arguments for method DescribeStackSummary on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackSummary on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeStackSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackSummary.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeStackSummaryResult = $opsworks->DescribeStackSummary(
      StackId => 'MyString',

    );

    # Results:
    my $StackSummary = $DescribeStackSummaryResult->StackSummary;

    # Returns a L<Paws::OpsWorks::DescribeStackSummaryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeStackSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackSummary in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

