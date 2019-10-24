# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeLocationS3Response;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw/Datasync_S3Config/;
  has CreationTime => (is => 'ro', isa => Str);
  has LocationArn => (is => 'ro', isa => Str);
  has LocationUri => (is => 'ro', isa => Str);
  has S3Config => (is => 'ro', isa => Datasync_S3Config);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LocationArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'S3Config' => {
                               'class' => 'Paws::Datasync::S3Config',
                               'type' => 'Datasync_S3Config'
                             },
               'LocationUri' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationS3Response

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the Amazon S3 bucket location was created.


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket location.


=head2 LocationUri => Str

The URL of the Amazon S3 location that was described.


=head2 S3Config => Datasync_S3Config




=head2 _request_id => Str


=cut

1;