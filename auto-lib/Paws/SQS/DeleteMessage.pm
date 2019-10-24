# Generated from callargs_class.tt

package Paws::SQS::DeleteMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SQS::Types qw//;
  has QueueUrl => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReceiptHandle => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteMessage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueueUrl' => {
                               'type' => 'Str'
                             },
               'ReceiptHandle' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'QueueUrl' => 1,
                    'ReceiptHandle' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::DeleteMessage - Arguments for method DeleteMessage on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMessage on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method DeleteMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMessage.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    $sqs->DeleteMessage(
      QueueUrl      => 'MyString',
      ReceiptHandle => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/DeleteMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue from which messages are deleted.

Queue URLs and names are case-sensitive.



=head2 B<REQUIRED> ReceiptHandle => Str

The receipt handle associated with the message to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMessage in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

