# Generated from json/callargs_class.tt

package Paws::KinesisAnalytics::DiscoverInputSchema;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputProcessingConfiguration KinesisAnalytics_S3Configuration KinesisAnalytics_InputStartingPositionConfiguration/;
  has InputProcessingConfiguration => (is => 'ro', isa => KinesisAnalytics_InputProcessingConfiguration, predicate => 1);
  has InputStartingPositionConfiguration => (is => 'ro', isa => KinesisAnalytics_InputStartingPositionConfiguration, predicate => 1);
  has ResourceARN => (is => 'ro', isa => Str, predicate => 1);
  has RoleARN => (is => 'ro', isa => Str, predicate => 1);
  has S3Configuration => (is => 'ro', isa => KinesisAnalytics_S3Configuration, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DiscoverInputSchema');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::KinesisAnalytics::DiscoverInputSchemaResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Configuration' => {
                                      'class' => 'Paws::KinesisAnalytics::S3Configuration',
                                      'type' => 'KinesisAnalytics_S3Configuration'
                                    },
               'InputStartingPositionConfiguration' => {
                                                         'class' => 'Paws::KinesisAnalytics::InputStartingPositionConfiguration',
                                                         'type' => 'KinesisAnalytics_InputStartingPositionConfiguration'
                                                       },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'InputProcessingConfiguration' => {
                                                   'class' => 'Paws::KinesisAnalytics::InputProcessingConfiguration',
                                                   'type' => 'KinesisAnalytics_InputProcessingConfiguration'
                                                 },
               'ResourceARN' => {
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

Paws::KinesisAnalytics::DiscoverInputSchema - Arguments for method DiscoverInputSchema on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverInputSchema on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method DiscoverInputSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverInputSchema.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $DiscoverInputSchemaResponse = $kinesisanalytics->DiscoverInputSchema(
      InputProcessingConfiguration => {
        InputLambdaProcessor => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048
          RoleARN     => 'MyRoleARN',        # min: 1, max: 2048

        },

      },    # OPTIONAL
      InputStartingPositionConfiguration => {
        InputStartingPosition =>
          'NOW',    # values: NOW, TRIM_HORIZON, LAST_STOPPED_POINT; OPTIONAL
      },    # OPTIONAL
      ResourceARN     => 'MyResourceARN',    # OPTIONAL
      RoleARN         => 'MyRoleARN',        # OPTIONAL
      S3Configuration => {
        BucketARN => 'MyBucketARN',          # min: 1, max: 2048
        FileKey   => 'MyFileKey',            # min: 1, max: 1024
        RoleARN   => 'MyRoleARN',            # min: 1, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $InputSchema        = $DiscoverInputSchemaResponse->InputSchema;
    my $ParsedInputRecords = $DiscoverInputSchemaResponse->ParsedInputRecords;
    my $ProcessedInputRecords =
      $DiscoverInputSchemaResponse->ProcessedInputRecords;
    my $RawInputRecords = $DiscoverInputSchemaResponse->RawInputRecords;

    # Returns a L<Paws::KinesisAnalytics::DiscoverInputSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DiscoverInputSchema>

=head1 ATTRIBUTES


=head2 InputProcessingConfiguration => KinesisAnalytics_InputProcessingConfiguration

The InputProcessingConfiguration
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
to use to preprocess the records before discovering the schema of the
records.



=head2 InputStartingPositionConfiguration => KinesisAnalytics_InputStartingPositionConfiguration

Point at which you want Amazon Kinesis Analytics to start reading
records from the specified streaming source discovery purposes.



=head2 ResourceARN => Str

Amazon Resource Name (ARN) of the streaming source.



=head2 RoleARN => Str

ARN of the IAM role that Amazon Kinesis Analytics can assume to access
the stream on your behalf.



=head2 S3Configuration => KinesisAnalytics_S3Configuration

Specify this parameter to discover a schema from data in an Amazon S3
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInputSchema in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

