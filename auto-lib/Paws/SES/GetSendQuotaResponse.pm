# Generated from callresult_class.tt

package Paws::SES::GetSendQuotaResponse;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::SES::Types qw//;
  has Max24HourSend => (is => 'ro', isa => Num);
  has MaxSendRate => (is => 'ro', isa => Num);
  has SentLast24Hours => (is => 'ro', isa => Num);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Max24HourSend' => {
                                    'type' => 'Num'
                                  },
               'SentLast24Hours' => {
                                      'type' => 'Num'
                                    },
               'MaxSendRate' => {
                                  'type' => 'Num'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetSendQuotaResponse

=head1 ATTRIBUTES


=head2 Max24HourSend => Num

The maximum number of emails the user is allowed to send in a 24-hour
interval. A value of -1 signifies an unlimited quota.


=head2 MaxSendRate => Num

The maximum number of emails that Amazon SES can accept from the user's
account per second.

The rate at which Amazon SES accepts the user's messages might be less
than the maximum send rate.


=head2 SentLast24Hours => Num

The number of emails sent during the previous 24 hours.


=head2 _request_id => Str


=cut

