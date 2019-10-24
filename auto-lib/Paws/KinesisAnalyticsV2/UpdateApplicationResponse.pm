# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::UpdateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationDetail/;
  has ApplicationDetail => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationDetail, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationDetail' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::ApplicationDetail',
                                        'type' => 'KinesisAnalyticsV2_ApplicationDetail'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationDetail' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => KinesisAnalyticsV2_ApplicationDetail

Describes application updates.


=head2 _request_id => Str


=cut

1;