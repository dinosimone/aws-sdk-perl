# Generated from json/callresult_class.tt

package Paws::CloudHSM::DescribeLunaClientResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSM::Types qw//;
  has Certificate => (is => 'ro', isa => Str);
  has CertificateFingerprint => (is => 'ro', isa => Str);
  has ClientArn => (is => 'ro', isa => Str);
  has Label => (is => 'ro', isa => Str);
  has LastModifiedTimestamp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'type' => 'Str'
                                },
               'CertificateFingerprint' => {
                                             'type' => 'Str'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastModifiedTimestamp' => {
                                            'type' => 'Str'
                                          },
               'Label' => {
                            'type' => 'Str'
                          },
               'ClientArn' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DescribeLunaClientResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The certificate installed on the HSMs used by this client.


=head2 CertificateFingerprint => Str

The certificate fingerprint.


=head2 ClientArn => Str

The ARN of the client.


=head2 Label => Str

The label of the client.


=head2 LastModifiedTimestamp => Str

The date and time the client was last modified.


=head2 _request_id => Str


=cut

1;