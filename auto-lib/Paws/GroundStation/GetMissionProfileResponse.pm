
package Paws::GroundStation::GetMissionProfileResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap/;
  has ContactPostPassDurationSeconds => (is => 'ro', isa => Int);
  has ContactPrePassDurationSeconds => (is => 'ro', isa => Int);
  has DataflowEdges => (is => 'ro', isa => ArrayRef[ArrayRef[Str|Undef]]);
  has MinimumViableContactDurationSeconds => (is => 'ro', isa => Int);
  has MissionProfileArn => (is => 'ro', isa => Str);
  has MissionProfileId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);
  has TrackingConfigArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MissionProfileArn' => {
                                        'type' => 'Str'
                                      },
               'MinimumViableContactDurationSeconds' => {
                                                          'type' => 'Int'
                                                        },
               'ContactPostPassDurationSeconds' => {
                                                     'type' => 'Int'
                                                   },
               'ContactPrePassDurationSeconds' => {
                                                    'type' => 'Int'
                                                  },
               'DataflowEdges' => {
                                    'type' => 'ArrayRef[ArrayRef[Str|Undef]]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'MissionProfileId' => {
                                       'type' => 'Str'
                                     },
               'Region' => {
                             'type' => 'Str'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'TrackingConfigArn' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'MissionProfileArn' => 'missionProfileArn',
                       'MinimumViableContactDurationSeconds' => 'minimumViableContactDurationSeconds',
                       'ContactPostPassDurationSeconds' => 'contactPostPassDurationSeconds',
                       'ContactPrePassDurationSeconds' => 'contactPrePassDurationSeconds',
                       'DataflowEdges' => 'dataflowEdges',
                       'Tags' => 'tags',
                       'MissionProfileId' => 'missionProfileId',
                       'Name' => 'name',
                       'Region' => 'region',
                       'TrackingConfigArn' => 'trackingConfigArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetMissionProfileResponse

=head1 ATTRIBUTES


=head2 ContactPostPassDurationSeconds => Int

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 ContactPrePassDurationSeconds => Int

Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 DataflowEdges => ArrayRef[ArrayRef[Str|Undef]]

A list of lists of ARNs. Each list of ARNs is an edge, with a from
C<Config> and a to C<Config>.


=head2 MinimumViableContactDurationSeconds => Int

Smallest amount of time in seconds that youE<rsquo>d like to see for an
available contact. AWS Ground Station will not present you with
contacts shorter than this duration.


=head2 MissionProfileArn => Str

ARN of a mission profile.


=head2 MissionProfileId => Str

ID of a mission profile.


=head2 Name => Str

Name of a mission profile.


=head2 Region => Str

Region of a mission profile.


=head2 Tags => GroundStation_TagsMap

Tags assigned to a mission profile.


=head2 TrackingConfigArn => Str

ARN of a tracking C<Config>.


=head2 _request_id => Str


=cut

