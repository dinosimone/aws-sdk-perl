# Generated from default/object.tt
package Paws::ManagedBlockchain::Proposal;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_ProposalActions/;
  has Actions => (is => 'ro', isa => ManagedBlockchain_ProposalActions);
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ExpirationDate => (is => 'ro', isa => Str);
  has NetworkId => (is => 'ro', isa => Str);
  has NoVoteCount => (is => 'ro', isa => Int);
  has OutstandingVoteCount => (is => 'ro', isa => Int);
  has ProposalId => (is => 'ro', isa => Str);
  has ProposedByMemberId => (is => 'ro', isa => Str);
  has ProposedByMemberName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has YesVoteCount => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'NoVoteCount' => {
                                  'type' => 'Int'
                                },
               'ProposedByMemberId' => {
                                         'type' => 'Str'
                                       },
               'ProposedByMemberName' => {
                                           'type' => 'Str'
                                         },
               'ExpirationDate' => {
                                     'type' => 'Str'
                                   },
               'ProposalId' => {
                                 'type' => 'Str'
                               },
               'NetworkId' => {
                                'type' => 'Str'
                              },
               'YesVoteCount' => {
                                   'type' => 'Int'
                                 },
               'Actions' => {
                              'class' => 'Paws::ManagedBlockchain::ProposalActions',
                              'type' => 'ManagedBlockchain_ProposalActions'
                            },
               'OutstandingVoteCount' => {
                                           'type' => 'Int'
                                         },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
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

Paws::ManagedBlockchain::Proposal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::Proposal object:

  $service_obj->Method(Att1 => { Actions => $value, ..., YesVoteCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::Proposal object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Properties of a proposal on a Managed Blockchain network.

=head1 ATTRIBUTES


=head2 Actions => ManagedBlockchain_ProposalActions

  The actions to perform on the network if the proposal is C<APPROVED>.


=head2 CreationDate => Str

  The date and time that the proposal was created.


=head2 Description => Str

  The description of the proposal.


=head2 ExpirationDate => Str

  The date and time that the proposal expires. This is the
C<CreationDate> plus the C<ProposalDurationInHours> that is specified
in the C<ProposalThresholdPolicy>. After this date and time, if members
have not cast enough votes to determine the outcome according to the
voting policy, the proposal is C<EXPIRED> and C<Actions> are not
carried out.


=head2 NetworkId => Str

  The unique identifier of the network for which the proposal is made.


=head2 NoVoteCount => Int

  The current total of C<NO> votes cast on the proposal by members.


=head2 OutstandingVoteCount => Int

  The number of votes remaining to be cast on the proposal by members. In
other words, the number of members minus the sum of C<YES> votes and
C<NO> votes.


=head2 ProposalId => Str

  The unique identifier of the proposal.


=head2 ProposedByMemberId => Str

  The unique identifier of the member that created the proposal.


=head2 ProposedByMemberName => Str

  The name of the member that created the proposal.


=head2 Status => Str

  The status of the proposal. Values are as follows:

=over

=item *

C<IN_PROGRESS> - The proposal is active and open for member voting.

=item *

C<APPROVED> - The proposal was approved with sufficient C<YES> votes
among members according to the C<VotingPolicy> specified for the
C<Network>. The specified proposal actions are carried out.

=item *

C<REJECTED> - The proposal was rejected with insufficient C<YES> votes
among members according to the C<VotingPolicy> specified for the
C<Network>. The specified C<ProposalActions> are not carried out.

=item *

C<EXPIRED> - Members did not cast the number of votes required to
determine the proposal outcome before the proposal expired. The
specified C<ProposalActions> are not carried out.

=item *

C<ACTION_FAILED> - One or more of the specified C<ProposalActions> in a
proposal that was approved could not be completed because of an error.

=back



=head2 YesVoteCount => Int

  The current total of C<YES> votes cast on the proposal by members.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

