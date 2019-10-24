# Generated from json/callresult_class.tt

package Paws::CodeCommit::BatchDescribeMergeConflictsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Conflict CodeCommit_BatchDescribeMergeConflictsError/;
  has BaseCommitId => (is => 'ro', isa => Str);
  has Conflicts => (is => 'ro', isa => ArrayRef[CodeCommit_Conflict], required => 1);
  has DestinationCommitId => (is => 'ro', isa => Str, required => 1);
  has Errors => (is => 'ro', isa => ArrayRef[CodeCommit_BatchDescribeMergeConflictsError]);
  has NextToken => (is => 'ro', isa => Str);
  has SourceCommitId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::CodeCommit::BatchDescribeMergeConflictsError',
                             'type' => 'ArrayRef[CodeCommit_BatchDescribeMergeConflictsError]'
                           },
               'BaseCommitId' => {
                                   'type' => 'Str'
                                 },
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   },
               'DestinationCommitId' => {
                                          'type' => 'Str'
                                        },
               'Conflicts' => {
                                'class' => 'Paws::CodeCommit::Conflict',
                                'type' => 'ArrayRef[CodeCommit_Conflict]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Errors' => 'errors',
                       'BaseCommitId' => 'baseCommitId',
                       'SourceCommitId' => 'sourceCommitId',
                       'DestinationCommitId' => 'destinationCommitId',
                       'Conflicts' => 'conflicts'
                     },
  'IsRequired' => {
                    'SourceCommitId' => 1,
                    'DestinationCommitId' => 1,
                    'Conflicts' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchDescribeMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> Conflicts => ArrayRef[CodeCommit_Conflict]

A list of conflicts for each file, including the conflict metadata and
the hunks of the differences between the files.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 Errors => ArrayRef[CodeCommit_BatchDescribeMergeConflictsError]

A list of any errors returned while describing the merge conflicts for
each file.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;