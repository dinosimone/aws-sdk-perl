# Generated from json/callresult_class.tt

package Paws::Transcribe::StartTranscriptionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transcribe::Types qw/Transcribe_TranscriptionJob/;
  has TranscriptionJob => (is => 'ro', isa => Transcribe_TranscriptionJob);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TranscriptionJob' => {
                                       'class' => 'Paws::Transcribe::TranscriptionJob',
                                       'type' => 'Transcribe_TranscriptionJob'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 TranscriptionJob => Transcribe_TranscriptionJob

An object containing details of the asynchronous transcription job.


=head2 _request_id => Str


=cut

1;