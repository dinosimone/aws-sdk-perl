# Generated from callargs_class.tt

package Paws::SNS::Publish;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw/SNS_MessageAttributeMap/;
  has Message => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MessageAttributes => (is => 'ro', isa => SNS_MessageAttributeMap, predicate => 1);
  has MessageStructure => (is => 'ro', isa => Str, predicate => 1);
  has PhoneNumber => (is => 'ro', isa => Str, predicate => 1);
  has Subject => (is => 'ro', isa => Str, predicate => 1);
  has TargetArn => (is => 'ro', isa => Str, predicate => 1);
  has TopicArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'Publish');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SNS::PublishResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'PublishResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MessageAttributes' => {
                                        'class' => 'Paws::SNS::MessageAttributeMap',
                                        'type' => 'SNS_MessageAttributeMap'
                                      },
               'Subject' => {
                              'type' => 'Str'
                            },
               'PhoneNumber' => {
                                  'type' => 'Str'
                                },
               'Message' => {
                              'type' => 'Str'
                            },
               'TargetArn' => {
                                'type' => 'Str'
                              },
               'TopicArn' => {
                               'type' => 'Str'
                             },
               'MessageStructure' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'Message' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::Publish - Arguments for method Publish on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Publish on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method Publish.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Publish.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $PublishResponse = $sns->Publish(
      Message           => 'Mymessage',
      MessageAttributes => {
        'MyString' => {
          DataType    => 'MyString',
          BinaryValue => 'BlobBinary',    # OPTIONAL
          StringValue => 'MyString',
        },
      },    # OPTIONAL
      MessageStructure => 'MymessageStructure',    # OPTIONAL
      PhoneNumber      => 'MyString',              # OPTIONAL
      Subject          => 'Mysubject',             # OPTIONAL
      TargetArn        => 'MyString',              # OPTIONAL
      TopicArn         => 'MytopicARN',            # OPTIONAL
    );

    # Results:
    my $MessageId = $PublishResponse->MessageId;

    # Returns a L<Paws::SNS::PublishResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/Publish>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

The message you want to send.

The C<Message> parameter is always a string. If you set
C<MessageStructure> to C<json>, you must string-encode the C<Message>
parameter.

If you are publishing to a topic and you want to send the same message
to all transport protocols, include the text of the message as a String
value. If you want to send different messages for each transport
protocol, set the value of the C<MessageStructure> parameter to C<json>
and use a JSON object for the C<Message> parameter.

Constraints:

=over

=item *

With the exception of SMS, messages must be UTF-8 encoded strings and
at most 256 KB in size (262,144 bytes, not 262,144 characters).

=item *

For SMS, each message can contain up to 140 characters. This character
limit depends on the encoding schema. For example, an SMS message can
contain 160 GSM characters, 140 ASCII characters, or 70 UCS-2
characters.

If you publish a message that exceeds this size limit, Amazon SNS sends
the message as multiple messages, each fitting within the size limit.
Messages aren't truncated mid-word but are cut off at whole-word
boundaries.

The total size limit for a single SMS C<Publish> action is 1,600
characters.

=back

JSON-specific constraints:

=over

=item *

Keys in the JSON object that correspond to supported transport
protocols must have simple JSON string values.

=item *

The values will be parsed (unescaped) before they are used in outgoing
messages.

=item *

Outbound notifications are JSON encoded (meaning that the characters
will be reescaped for sending).

=item *

Values have a minimum length of 0 (the empty string, "", is allowed).

=item *

Values have a maximum length bounded by the overall message size (so,
including multiple protocols may limit message sizes).

=item *

Non-string values will cause the key to be ignored.

=item *

Keys that do not correspond to supported transport protocols are
ignored.

=item *

Duplicate keys are not allowed.

=item *

Failure to parse or validate any key or value in the message will cause
the C<Publish> call to return an error (no partial delivery).

=back




=head2 MessageAttributes => SNS_MessageAttributeMap

Message attributes for Publish action.



=head2 MessageStructure => Str

Set C<MessageStructure> to C<json> if you want to send a different
message for each protocol. For example, using one publish action, you
can send a short message to your SMS subscribers and a longer message
to your email subscribers. If you set C<MessageStructure> to C<json>,
the value of the C<Message> parameter must:

=over

=item *

be a syntactically valid JSON object; and

=item *

contain at least a top-level JSON key of "default" with a value that is
a string.

=back

You can define other top-level keys that define the message you want to
send to a specific transport protocol (e.g., "http").

For information about sending different messages for each protocol
using the AWS Management Console, go to Create Different Messages for
Each Protocol
(https://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol)
in the I<Amazon Simple Notification Service Getting Started Guide>.

Valid value: C<json>



=head2 PhoneNumber => Str

The phone number to which you want to deliver an SMS message. Use E.164
format.

If you don't specify a value for the C<PhoneNumber> parameter, you must
specify a value for the C<TargetArn> or C<TopicArn> parameters.



=head2 Subject => Str

Optional parameter to be used as the "Subject" line when the message is
delivered to email endpoints. This field will also be included, if
present, in the standard JSON messages delivered to other endpoints.

Constraints: Subjects must be ASCII text that begins with a letter,
number, or punctuation mark; must not include line breaks or control
characters; and must be less than 100 characters long.



=head2 TargetArn => Str

If you don't specify a value for the C<TargetArn> parameter, you must
specify a value for the C<PhoneNumber> or C<TopicArn> parameters.



=head2 TopicArn => Str

The topic you want to publish to.

If you don't specify a value for the C<TopicArn> parameter, you must
specify a value for the C<PhoneNumber> or C<TargetArn> parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Publish in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

