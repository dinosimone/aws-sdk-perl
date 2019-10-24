# Generated from json/callresult_class.tt

package Paws::Kinesis::PutRecordsOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_PutRecordsResultEntry/;
  has EncryptionType => (is => 'ro', isa => Str);
  has FailedRecordCount => (is => 'ro', isa => Int);
  has Records => (is => 'ro', isa => ArrayRef[Kinesis_PutRecordsResultEntry], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EncryptionType' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Records' => {
                              'class' => 'Paws::Kinesis::PutRecordsResultEntry',
                              'type' => 'ArrayRef[Kinesis_PutRecordsResultEntry]'
                            },
               'FailedRecordCount' => {
                                        'type' => 'Int'
                                      }
             },
  'IsRequired' => {
                    'Records' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecordsOutput

=head1 ATTRIBUTES


=head2 EncryptionType => Str

The encryption type used on the records. This parameter can be one of
the following values:

=over

=item *

C<NONE>: Do not encrypt the records.

=item *

C<KMS>: Use server-side encryption on the records using a
customer-managed AWS KMS key.

=back


Valid values are: C<"NONE">, C<"KMS">
=head2 FailedRecordCount => Int

The number of unsuccessfully processed records in a C<PutRecords>
request.


=head2 B<REQUIRED> Records => ArrayRef[Kinesis_PutRecordsResultEntry]

An array of successfully and unsuccessfully processed record results,
correlated with the request by natural ordering. A record that is
successfully added to a stream includes C<SequenceNumber> and
C<ShardId> in the result. A record that fails to be added to a stream
includes C<ErrorCode> and C<ErrorMessage> in the result.


=head2 _request_id => Str


=cut

1;