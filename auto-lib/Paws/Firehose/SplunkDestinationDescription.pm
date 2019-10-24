# Generated from default/object.tt
package Paws::Firehose::SplunkDestinationDescription;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Firehose::Types qw/Firehose_ProcessingConfiguration Firehose_CloudWatchLoggingOptions Firehose_SplunkRetryOptions Firehose_S3DestinationDescription/;
  has CloudWatchLoggingOptions => (is => 'ro', isa => Firehose_CloudWatchLoggingOptions);
  has HECAcknowledgmentTimeoutInSeconds => (is => 'ro', isa => Int);
  has HECEndpoint => (is => 'ro', isa => Str);
  has HECEndpointType => (is => 'ro', isa => Str);
  has HECToken => (is => 'ro', isa => Str);
  has ProcessingConfiguration => (is => 'ro', isa => Firehose_ProcessingConfiguration);
  has RetryOptions => (is => 'ro', isa => Firehose_SplunkRetryOptions);
  has S3BackupMode => (is => 'ro', isa => Str);
  has S3DestinationDescription => (is => 'ro', isa => Firehose_S3DestinationDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProcessingConfiguration' => {
                                              'class' => 'Paws::Firehose::ProcessingConfiguration',
                                              'type' => 'Firehose_ProcessingConfiguration'
                                            },
               'CloudWatchLoggingOptions' => {
                                               'class' => 'Paws::Firehose::CloudWatchLoggingOptions',
                                               'type' => 'Firehose_CloudWatchLoggingOptions'
                                             },
               'S3BackupMode' => {
                                   'type' => 'Str'
                                 },
               'HECAcknowledgmentTimeoutInSeconds' => {
                                                        'type' => 'Int'
                                                      },
               'RetryOptions' => {
                                   'class' => 'Paws::Firehose::SplunkRetryOptions',
                                   'type' => 'Firehose_SplunkRetryOptions'
                                 },
               'HECEndpoint' => {
                                  'type' => 'Str'
                                },
               'HECToken' => {
                               'type' => 'Str'
                             },
               'S3DestinationDescription' => {
                                               'class' => 'Paws::Firehose::S3DestinationDescription',
                                               'type' => 'Firehose_S3DestinationDescription'
                                             },
               'HECEndpointType' => {
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

Paws::Firehose::SplunkDestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::SplunkDestinationDescription object:

  $service_obj->Method(Att1 => { CloudWatchLoggingOptions => $value, ..., S3DestinationDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::SplunkDestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingOptions

=head1 DESCRIPTION

Describes a destination in Splunk.

=head1 ATTRIBUTES


=head2 CloudWatchLoggingOptions => Firehose_CloudWatchLoggingOptions

  The Amazon CloudWatch logging options for your delivery stream.


=head2 HECAcknowledgmentTimeoutInSeconds => Int

  The amount of time that Kinesis Data Firehose waits to receive an
acknowledgment from Splunk after it sends it data. At the end of the
timeout period, Kinesis Data Firehose either tries to send the data
again or considers it an error, based on your retry settings.


=head2 HECEndpoint => Str

  The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
sends your data.


=head2 HECEndpointType => Str

  This type can be either "Raw" or "Event."


=head2 HECToken => Str

  A GUID you obtain from your Splunk cluster when you create a new HEC
endpoint.


=head2 ProcessingConfiguration => Firehose_ProcessingConfiguration

  The data processing configuration.


=head2 RetryOptions => Firehose_SplunkRetryOptions

  The retry behavior in case Kinesis Data Firehose is unable to deliver
data to Splunk or if it doesn't receive an acknowledgment of receipt
from Splunk.


=head2 S3BackupMode => Str

  Defines how documents should be delivered to Amazon S3. When set to
C<FailedDocumentsOnly>, Kinesis Data Firehose writes any data that
could not be indexed to the configured Amazon S3 destination. When set
to C<AllDocuments>, Kinesis Data Firehose delivers all incoming records
to Amazon S3, and also writes failed documents to Amazon S3. Default
value is C<FailedDocumentsOnly>.


=head2 S3DestinationDescription => Firehose_S3DestinationDescription

  The Amazon S3 destination.E<gt>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

