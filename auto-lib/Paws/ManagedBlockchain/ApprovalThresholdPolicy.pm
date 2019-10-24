# Generated from default/object.tt
package Paws::ManagedBlockchain::ApprovalThresholdPolicy;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has ProposalDurationInHours => (is => 'ro', isa => Int);
  has ThresholdComparator => (is => 'ro', isa => Str);
  has ThresholdPercentage => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThresholdComparator' => {
                                          'type' => 'Str'
                                        },
               'ThresholdPercentage' => {
                                          'type' => 'Int'
                                        },
               'ProposalDurationInHours' => {
                                              'type' => 'Int'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ApprovalThresholdPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::ApprovalThresholdPolicy object:

  $service_obj->Method(Att1 => { ProposalDurationInHours => $value, ..., ThresholdPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::ApprovalThresholdPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->ProposalDurationInHours

=head1 DESCRIPTION

A policy type that defines the voting rules for the network. The rules
decide if a proposal is approved. Approval may be based on criteria
such as the percentage of C<YES> votes and the duration of the
proposal. The policy applies to all proposals and is specified when the
network is created.

=head1 ATTRIBUTES


=head2 ProposalDurationInHours => Int

  The duration from the time that a proposal is created until it expires.
If members cast neither the required number of C<YES> votes to approve
the proposal nor the number of C<NO> votes required to reject it before
the duration expires, the proposal is C<EXPIRED> and C<ProposalActions>
are not carried out.


=head2 ThresholdComparator => Str

  Determines whether the vote percentage must be greater than the
C<ThresholdPercentage> or must be greater than or equal to the
C<ThreholdPercentage> to be approved.


=head2 ThresholdPercentage => Int

  The percentage of votes among all members that must be C<YES> for a
proposal to be approved. For example, a C<ThresholdPercentage> value of
C<50> indicates 50%. The C<ThresholdComparator> determines the precise
comparison. If a C<ThresholdPercentage> value of C<50> is specified on
a network with 10 members, along with a C<ThresholdComparator> value of
C<GREATER_THAN>, this indicates that 6 C<YES> votes are required for
the proposal to be approved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

