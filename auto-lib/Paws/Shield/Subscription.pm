# Generated from default/object.tt
package Paws::Shield::Subscription;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Shield::Types qw/Shield_Limit/;
  has AutoRenew => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has Limits => (is => 'ro', isa => ArrayRef[Shield_Limit]);
  has StartTime => (is => 'ro', isa => Str);
  has TimeCommitmentInSeconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimeCommitmentInSeconds' => {
                                              'type' => 'Int'
                                            },
               'Limits' => {
                             'class' => 'Paws::Shield::Limit',
                             'type' => 'ArrayRef[Shield_Limit]'
                           },
               'AutoRenew' => {
                                'type' => 'Str'
                              },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
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

Paws::Shield::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::Subscription object:

  $service_obj->Method(Att1 => { AutoRenew => $value, ..., TimeCommitmentInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoRenew

=head1 DESCRIPTION

Information about the AWS Shield Advanced subscription for an account.

=head1 ATTRIBUTES


=head2 AutoRenew => Str

  If C<ENABLED>, the subscription will be automatically renewed at the
end of the existing subscription period.

When you initally create a subscription, C<AutoRenew> is set to
C<ENABLED>. You can change this by submitting an C<UpdateSubscription>
request. If the C<UpdateSubscription> request does not included a value
for C<AutoRenew>, the existing value for C<AutoRenew> remains
unchanged.


=head2 EndTime => Str

  The date and time your subscription will end.


=head2 Limits => ArrayRef[Shield_Limit]

  Specifies how many protections of a given type you can create.


=head2 StartTime => Str

  The start time of the subscription, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 TimeCommitmentInSeconds => Int

  The length, in seconds, of the AWS Shield Advanced subscription for the
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

