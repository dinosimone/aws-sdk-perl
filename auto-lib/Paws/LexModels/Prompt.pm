# Generated from default/object.tt
package Paws::LexModels::Prompt;
  use Moo;
  use Types::Standard qw/Int ArrayRef Str/;
  use Paws::LexModels::Types qw/LexModels_Message/;
  has MaxAttempts => (is => 'ro', isa => Int, required => 1);
  has Messages => (is => 'ro', isa => ArrayRef[LexModels_Message], required => 1);
  has ResponseCard => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxAttempts' => {
                                  'type' => 'Int'
                                },
               'ResponseCard' => {
                                   'type' => 'Str'
                                 },
               'Messages' => {
                               'class' => 'Paws::LexModels::Message',
                               'type' => 'ArrayRef[LexModels_Message]'
                             }
             },
  'NameInRequest' => {
                       'MaxAttempts' => 'maxAttempts',
                       'ResponseCard' => 'responseCard',
                       'Messages' => 'messages'
                     },
  'IsRequired' => {
                    'MaxAttempts' => 1,
                    'Messages' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::Prompt

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::Prompt object:

  $service_obj->Method(Att1 => { MaxAttempts => $value, ..., ResponseCard => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::Prompt object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxAttempts

=head1 DESCRIPTION

Obtains information from the user. To define a prompt, provide one or
more messages and specify the number of attempts to get information
from the user. If you provide more than one message, Amazon Lex chooses
one of the messages to use to prompt the user. For more information,
see how-it-works.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxAttempts => Int

  The number of times to prompt the user for information.


=head2 B<REQUIRED> Messages => ArrayRef[LexModels_Message]

  An array of objects, each of which provides a message string and its
type. You can specify the message string in plain text or in Speech
Synthesis Markup Language (SSML).


=head2 ResponseCard => Str

  A response card. Amazon Lex uses this prompt at runtime, in the
C<PostText> API response. It substitutes session attributes and slot
values for placeholders in the response card. For more information, see
ex-resp-card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

