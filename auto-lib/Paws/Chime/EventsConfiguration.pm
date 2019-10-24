# Generated from default/object.tt
package Paws::Chime::EventsConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has BotId => (is => 'ro', isa => Str);
  has LambdaFunctionArn => (is => 'ro', isa => Str);
  has OutboundEventsHTTPSEndpoint => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutboundEventsHTTPSEndpoint' => {
                                                  'type' => 'Str'
                                                },
               'LambdaFunctionArn' => {
                                        'type' => 'Str'
                                      },
               'BotId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::EventsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::EventsConfiguration object:

  $service_obj->Method(Att1 => { BotId => $value, ..., OutboundEventsHTTPSEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::EventsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BotId

=head1 DESCRIPTION

The configuration that allows a bot to receive outgoing events. Can be
either an HTTPS endpoint or a Lambda function ARN.

=head1 ATTRIBUTES


=head2 BotId => Str

  The bot ID.


=head2 LambdaFunctionArn => Str

  Lambda function ARN that allows a bot to receive outgoing events.


=head2 OutboundEventsHTTPSEndpoint => Str

  HTTPS endpoint that allows a bot to receive outgoing events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

