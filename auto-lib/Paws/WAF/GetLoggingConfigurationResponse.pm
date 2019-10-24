# Generated from json/callresult_class.tt

package Paws::WAF::GetLoggingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => WAF_LoggingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggingConfiguration' => {
                                           'class' => 'Paws::WAF::LoggingConfiguration',
                                           'type' => 'WAF_LoggingConfiguration'
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

Paws::WAF::GetLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfiguration => WAF_LoggingConfiguration

The LoggingConfiguration for the specified web ACL.


=head2 _request_id => Str


=cut

1;