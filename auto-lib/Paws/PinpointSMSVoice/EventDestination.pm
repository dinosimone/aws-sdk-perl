# Generated from default/object.tt
package Paws::PinpointSMSVoice::EventDestination;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Undef Str/;
  use Paws::PinpointSMSVoice::Types qw/PinpointSMSVoice_SnsDestination PinpointSMSVoice_KinesisFirehoseDestination PinpointSMSVoice_CloudWatchLogsDestination/;
  has CloudWatchLogsDestination => (is => 'ro', isa => PinpointSMSVoice_CloudWatchLogsDestination);
  has Enabled => (is => 'ro', isa => Bool);
  has KinesisFirehoseDestination => (is => 'ro', isa => PinpointSMSVoice_KinesisFirehoseDestination);
  has MatchingEventTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Name => (is => 'ro', isa => Str);
  has SnsDestination => (is => 'ro', isa => PinpointSMSVoice_SnsDestination);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudWatchLogsDestination' => {
                                                'class' => 'Paws::PinpointSMSVoice::CloudWatchLogsDestination',
                                                'type' => 'PinpointSMSVoice_CloudWatchLogsDestination'
                                              },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'SnsDestination' => {
                                     'class' => 'Paws::PinpointSMSVoice::SnsDestination',
                                     'type' => 'PinpointSMSVoice_SnsDestination'
                                   },
               'MatchingEventTypes' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'KinesisFirehoseDestination' => {
                                                 'class' => 'Paws::PinpointSMSVoice::KinesisFirehoseDestination',
                                                 'type' => 'PinpointSMSVoice_KinesisFirehoseDestination'
                                               },
               'Name' => {
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

Paws::PinpointSMSVoice::EventDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::EventDestination object:

  $service_obj->Method(Att1 => { CloudWatchLogsDestination => $value, ..., SnsDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::EventDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsDestination

=head1 DESCRIPTION

An object that defines an event destination.

=head1 ATTRIBUTES


=head2 CloudWatchLogsDestination => PinpointSMSVoice_CloudWatchLogsDestination

  


=head2 Enabled => Bool

  Indicates whether or not the event destination is enabled. If the event
destination is enabled, then Amazon Pinpoint sends response data to the
specified event destination.


=head2 KinesisFirehoseDestination => PinpointSMSVoice_KinesisFirehoseDestination

  


=head2 MatchingEventTypes => ArrayRef[Str|Undef]

  


=head2 Name => Str

  A name that identifies the event destination configuration.


=head2 SnsDestination => PinpointSMSVoice_SnsDestination

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

