package Paws::MediaPackage::HlsManifestCreateOrUpdateParameters;
  use Moose;
  has AdMarkers => (is => 'ro', isa => 'Str', request_name => 'adMarkers', traits => ['NameInRequest']);
  has AdsOnDeliveryRestrictions => (is => 'ro', isa => 'Str', request_name => 'adsOnDeliveryRestrictions', traits => ['NameInRequest']);
  has AdTriggers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'adTriggers', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has IncludeIframeOnlyStream => (is => 'ro', isa => 'Bool', request_name => 'includeIframeOnlyStream', traits => ['NameInRequest']);
  has ManifestName => (is => 'ro', isa => 'Str', request_name => 'manifestName', traits => ['NameInRequest']);
  has PlaylistType => (is => 'ro', isa => 'Str', request_name => 'playlistType', traits => ['NameInRequest']);
  has PlaylistWindowSeconds => (is => 'ro', isa => 'Int', request_name => 'playlistWindowSeconds', traits => ['NameInRequest']);
  has ProgramDateTimeIntervalSeconds => (is => 'ro', isa => 'Int', request_name => 'programDateTimeIntervalSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::HlsManifestCreateOrUpdateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HlsManifestCreateOrUpdateParameters object:

  $service_obj->Method(Att1 => { AdMarkers => $value, ..., ProgramDateTimeIntervalSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HlsManifestCreateOrUpdateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->AdMarkers

=head1 DESCRIPTION

A HTTP Live Streaming (HLS) manifest configuration.

=head1 ATTRIBUTES


=head2 AdMarkers => Str

  This setting controls how ad markers are included in the packaged
OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the
output. "PASSTHROUGH" causes the manifest to contain a copy of the
SCTE-35 ad markers (comments) taken directly from the input HTTP Live
Streaming (HLS) manifest. "SCTE35_ENHANCED" generates ad markers and
blackout tags based on SCTE-35 messages in the input source.


=head2 AdsOnDeliveryRestrictions => Str

  


=head2 AdTriggers => ArrayRef[Str|Undef]

  


=head2 B<REQUIRED> Id => Str

  The ID of the manifest. The ID must be unique within the OriginEndpoint
and it cannot be changed after it is created.


=head2 IncludeIframeOnlyStream => Bool

  When enabled, an I-Frame only stream will be included in the output.


=head2 ManifestName => Str

  An optional short string appended to the end of the OriginEndpoint URL.
If not specified, defaults to the manifestName for the OriginEndpoint.


=head2 PlaylistType => Str

  The HTTP Live Streaming (HLS) playlist type. When either "EVENT" or
"VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be
included in the media playlist.


=head2 PlaylistWindowSeconds => Int

  Time window (in seconds) contained in each parent manifest.


=head2 ProgramDateTimeIntervalSeconds => Int

  The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content. If the interval is not specified, or set to
0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests
and no ID3Timed Metadata messages will be generated. Note that
irrespective of this parameter, if any ID3 Timed Metadata is found in
HTTP Live Streaming (HLS) input, it will be passed through to HLS
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

