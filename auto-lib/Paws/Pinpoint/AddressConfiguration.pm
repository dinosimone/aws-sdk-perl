package Paws::Pinpoint::AddressConfiguration;
  use Moose;
  has BodyOverride => (is => 'ro', isa => 'Str');
  has ChannelType => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has RawContent => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has TitleOverride => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AddressConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AddressConfiguration object:

  $service_obj->Method(Att1 => { BodyOverride => $value, ..., TitleOverride => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AddressConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BodyOverride

=head1 DESCRIPTION

Specifies address-based configuration settings for a message that's
sent directly to an endpoint.

=head1 ATTRIBUTES


=head2 BodyOverride => Str

  The message body to use instead of the default message body. This value
overrides the default message body.


=head2 ChannelType => Str

  The channel to use when sending the message.


=head2 Context => L<Paws::Pinpoint::MapOf__string>

  An object that maps custom attributes to attributes for the address and
is attached to the message. For a push notification, this payload is
added to the data.pinpoint object. For an email or text message, this
payload is added to email/SMS delivery receipt event attributes.


=head2 RawContent => Str

  The raw, JSON-formatted string to use as the payload for the
notification message. This value overrides the message.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  An object that maps variable values for the message. Amazon Pinpoint
merges these values with the variable values specified by properties of
the DefaultMessage object. The substitutions in this map take
precedence over all other substitutions.


=head2 TitleOverride => Str

  The message title to use instead of the default message title. This
value overrides the default message title.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

