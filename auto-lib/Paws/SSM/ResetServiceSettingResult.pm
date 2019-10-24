# Generated from json/callresult_class.tt

package Paws::SSM::ResetServiceSettingResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_ServiceSetting/;
  has ServiceSetting => (is => 'ro', isa => SSM_ServiceSetting);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceSetting' => {
                                     'class' => 'Paws::SSM::ServiceSetting',
                                     'type' => 'SSM_ServiceSetting'
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

Paws::SSM::ResetServiceSettingResult

=head1 ATTRIBUTES


=head2 ServiceSetting => SSM_ServiceSetting

The current, effective service setting after calling the
ResetServiceSetting API action.


=head2 _request_id => Str


=cut

1;