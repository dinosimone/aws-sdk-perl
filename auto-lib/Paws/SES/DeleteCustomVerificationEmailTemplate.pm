# Generated from callargs_class.tt

package Paws::SES::DeleteCustomVerificationEmailTemplate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw//;
  has TemplateName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteCustomVerificationEmailTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TemplateName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'TemplateName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteCustomVerificationEmailTemplate - Arguments for method DeleteCustomVerificationEmailTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomVerificationEmailTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteCustomVerificationEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomVerificationEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    $email->DeleteCustomVerificationEmailTemplate(
      TemplateName => 'MyTemplateName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteCustomVerificationEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the custom verification email template that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomVerificationEmailTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

