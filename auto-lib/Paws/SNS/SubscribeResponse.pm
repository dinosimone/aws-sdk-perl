# Generated from callresult_class.tt

package Paws::SNS::SubscribeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw//;
  has SubscriptionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubscriptionArn' => {
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

Paws::SNS::SubscribeResponse

=head1 ATTRIBUTES


=head2 SubscriptionArn => Str

The ARN of the subscription if it is confirmed, or the string "pending
confirmation" if the subscription requires confirmation. However, if
the API request parameter C<ReturnSubscriptionArn> is true, then the
value is always the subscription ARN, even if the subscription requires
confirmation.


=head2 _request_id => Str


=cut

