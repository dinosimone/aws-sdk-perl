# Generated from default/object.tt
package Paws::Comprehend::BatchDetectSyntaxItemResult;
  use Moo;
  use Types::Standard qw/Int ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_SyntaxToken/;
  has Index => (is => 'ro', isa => Int);
  has SyntaxTokens => (is => 'ro', isa => ArrayRef[Comprehend_SyntaxToken]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SyntaxTokens' => {
                                   'class' => 'Paws::Comprehend::SyntaxToken',
                                   'type' => 'ArrayRef[Comprehend_SyntaxToken]'
                                 },
               'Index' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::BatchDetectSyntaxItemResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::BatchDetectSyntaxItemResult object:

  $service_obj->Method(Att1 => { Index => $value, ..., SyntaxTokens => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::BatchDetectSyntaxItemResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

The result of calling the operation. The operation returns one object
that is successfully processed by the operation.

=head1 ATTRIBUTES


=head2 Index => Int

  The zero-based index of the document in the input list.


=head2 SyntaxTokens => ArrayRef[Comprehend_SyntaxToken]

  The syntax tokens for the words in the document, one token for each
word.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

