# Generated from default/object.tt
package Paws::KinesisVideoArchivedMedia::DASHFragmentSelector;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideoArchivedMedia::Types qw/KinesisVideoArchivedMedia_DASHTimestampRange/;
  has FragmentSelectorType => (is => 'ro', isa => Str);
  has TimestampRange => (is => 'ro', isa => KinesisVideoArchivedMedia_DASHTimestampRange);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimestampRange' => {
                                     'class' => 'Paws::KinesisVideoArchivedMedia::DASHTimestampRange',
                                     'type' => 'KinesisVideoArchivedMedia_DASHTimestampRange'
                                   },
               'FragmentSelectorType' => {
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

Paws::KinesisVideoArchivedMedia::DASHFragmentSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoArchivedMedia::DASHFragmentSelector object:

  $service_obj->Method(Att1 => { FragmentSelectorType => $value, ..., TimestampRange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoArchivedMedia::DASHFragmentSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->FragmentSelectorType

=head1 DESCRIPTION

Contains the range of timestamps for the requested media, and the
source of the timestamps.

=head1 ATTRIBUTES


=head2 FragmentSelectorType => Str

  The source of the timestamps for the requested media.

When C<FragmentSelectorType> is set to C<PRODUCER_TIMESTAMP> and
GetDASHStreamingSessionURLInput$PlaybackMode is C<ON_DEMAND> or
C<LIVE_REPLAY>, the first fragment ingested with a producer timestamp
within the specified FragmentSelector$TimestampRange is included in the
media playlist. In addition, the fragments with producer timestamps
within the C<TimestampRange> ingested immediately following the first
fragment (up to the
GetDASHStreamingSessionURLInput$MaxManifestFragmentResults value) are
included.

Fragments that have duplicate producer timestamps are deduplicated.
This means that if producers are producing a stream of fragments with
producer timestamps that are approximately equal to the true clock
time, the MPEG-DASH manifest will contain all of the fragments within
the requested timestamp range. If some fragments are ingested within
the same time range and very different points in time, only the oldest
ingested collection of fragments are returned.

When C<FragmentSelectorType> is set to C<PRODUCER_TIMESTAMP> and
GetDASHStreamingSessionURLInput$PlaybackMode is C<LIVE>, the producer
timestamps are used in the MP4 fragments and for deduplication. But the
most recently ingested fragments based on server timestamps are
included in the MPEG-DASH manifest. This means that even if fragments
ingested in the past have producer timestamps with values now, they are
not included in the HLS media playlist.

The default is C<SERVER_TIMESTAMP>.


=head2 TimestampRange => KinesisVideoArchivedMedia_DASHTimestampRange

  The start and end of the timestamp range for the requested media.

This value should not be present if C<PlaybackType> is C<LIVE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

