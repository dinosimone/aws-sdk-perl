# Generated from callresult_class.tt

package Paws::SES::GetIdentityMailFromDomainAttributesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_MailFromDomainAttributes/;
  has MailFromDomainAttributes => (is => 'ro', isa => SES_MailFromDomainAttributes, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MailFromDomainAttributes' => {
                                               'class' => 'Paws::SES::MailFromDomainAttributes',
                                               'type' => 'SES_MailFromDomainAttributes'
                                             }
             },
  'IsRequired' => {
                    'MailFromDomainAttributes' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityMailFromDomainAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MailFromDomainAttributes => SES_MailFromDomainAttributes

A map of identities to custom MAIL FROM attributes.


=head2 _request_id => Str


=cut

