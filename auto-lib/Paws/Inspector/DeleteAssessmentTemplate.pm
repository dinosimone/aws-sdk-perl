# Generated from json/callargs_class.tt

package Paws::Inspector::DeleteAssessmentTemplate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has AssessmentTemplateArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteAssessmentTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentTemplateArn' => {
                                            'type' => 'Str'
                                          }
             },
  'NameInRequest' => {
                       'AssessmentTemplateArn' => 'assessmentTemplateArn'
                     },
  'IsRequired' => {
                    'AssessmentTemplateArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DeleteAssessmentTemplate - Arguments for method DeleteAssessmentTemplate on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssessmentTemplate on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DeleteAssessmentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssessmentTemplate.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Delete assessment template
    # Deletes the assessment template that is specified by the ARN of the
    # assessment template.
    $inspector->DeleteAssessmentTemplate( 'AssessmentTemplateArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DeleteAssessmentTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssessmentTemplate in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

