# Generated from callargs_class.tt

package Paws::CloudSearch::DescribeAnalysisSchemes;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::CloudSearch::Types qw//;
  has AnalysisSchemeNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Deployed => (is => 'ro', isa => Bool, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAnalysisSchemes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudSearch::DescribeAnalysisSchemesResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeAnalysisSchemesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Deployed' => {
                               'type' => 'Bool'
                             },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'AnalysisSchemeNames' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        }
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

Paws::CloudSearch::DescribeAnalysisSchemes - Arguments for method DescribeAnalysisSchemes on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnalysisSchemes on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeAnalysisSchemes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnalysisSchemes.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeAnalysisSchemesResponse = $cloudsearch->DescribeAnalysisSchemes(
      DomainName          => 'MyDomainName',
      AnalysisSchemeNames => [
        'MyStandardName', ...    # min: 1, max: 64
      ],                         # OPTIONAL
      Deployed => 1,             # OPTIONAL
    );

    # Results:
    my $AnalysisSchemes = $DescribeAnalysisSchemesResponse->AnalysisSchemes;

    # Returns a L<Paws::CloudSearch::DescribeAnalysisSchemesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeAnalysisSchemes>

=head1 ATTRIBUTES


=head2 AnalysisSchemeNames => ArrayRef[Str|Undef]

The analysis schemes you want to describe.



=head2 Deployed => Bool

Whether to display the deployed configuration (C<true>) or include any
pending changes (C<false>). Defaults to C<false>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnalysisSchemes in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

