# Generated from json/callresult_class.tt

package Paws::SSM::DescribePatchGroupStateResult;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SSM::Types qw//;
  has Instances => (is => 'ro', isa => Int);
  has InstancesWithFailedPatches => (is => 'ro', isa => Int);
  has InstancesWithInstalledOtherPatches => (is => 'ro', isa => Int);
  has InstancesWithInstalledPatches => (is => 'ro', isa => Int);
  has InstancesWithInstalledRejectedPatches => (is => 'ro', isa => Int);
  has InstancesWithMissingPatches => (is => 'ro', isa => Int);
  has InstancesWithNotApplicablePatches => (is => 'ro', isa => Int);
  has InstancesWithUnreportedNotApplicablePatches => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstancesWithFailedPatches' => {
                                                 'type' => 'Int'
                                               },
               'InstancesWithNotApplicablePatches' => {
                                                        'type' => 'Int'
                                                      },
               'InstancesWithInstalledOtherPatches' => {
                                                         'type' => 'Int'
                                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstancesWithInstalledPatches' => {
                                                    'type' => 'Int'
                                                  },
               'Instances' => {
                                'type' => 'Int'
                              },
               'InstancesWithUnreportedNotApplicablePatches' => {
                                                                  'type' => 'Int'
                                                                },
               'InstancesWithInstalledRejectedPatches' => {
                                                            'type' => 'Int'
                                                          },
               'InstancesWithMissingPatches' => {
                                                  'type' => 'Int'
                                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupStateResult

=head1 ATTRIBUTES


=head2 Instances => Int

The number of instances in the patch group.


=head2 InstancesWithFailedPatches => Int

The number of instances with patches from the patch baseline that
failed to install.


=head2 InstancesWithInstalledOtherPatches => Int

The number of instances with patches installed that aren't defined in
the patch baseline.


=head2 InstancesWithInstalledPatches => Int

The number of instances with installed patches.


=head2 InstancesWithInstalledRejectedPatches => Int

The number of instances with patches installed that are specified in a
RejectedPatches list. Patches with a status of I<INSTALLED_REJECTED>
were typically installed before they were added to a RejectedPatches
list.

If ALLOW_AS_DEPENDENCY is the specified option for
RejectedPatchesAction, the value of
InstancesWithInstalledRejectedPatches will always be 0 (zero).


=head2 InstancesWithMissingPatches => Int

The number of instances with missing patches from the patch baseline.


=head2 InstancesWithNotApplicablePatches => Int

The number of instances with patches that aren't applicable.


=head2 InstancesWithUnreportedNotApplicablePatches => Int

The number of instances with C<NotApplicable> patches beyond the
supported limit, which are not reported by name to Systems Manager
Inventory.


=head2 _request_id => Str


=cut

1;