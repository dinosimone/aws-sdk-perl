package Paws::SESv2::Template;
  use Moose;
  has TemplateArn => (is => 'ro', isa => 'Str');
  has TemplateData => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::Template

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::Template object:

  $service_obj->Method(Att1 => { TemplateArn => $value, ..., TemplateData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::Template object:

  $result = $service_obj->Method(...);
  $result->Att1->TemplateArn

=head1 DESCRIPTION

An object that defines the email template to use for an email message,
and the values to use for any message variables in that template. An
I<email template> is a type of message template that contains content
that you want to define, save, and reuse in email messages that you
send.

=head1 ATTRIBUTES


=head2 TemplateArn => Str

  The Amazon Resource Name (ARN) of the template.


=head2 TemplateData => Str

  An object that defines the values to use for message variables in the
template. This object is a set of key-value pairs. Each key defines a
message variable in the template. The corresponding value defines the
value to use for that variable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
