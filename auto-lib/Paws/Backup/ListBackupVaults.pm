
package Paws::Backup::ListBackupVaults;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Backup::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListBackupVaults');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/backup-vaults/');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Backup::ListBackupVaultsOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupVaults - Arguments for method ListBackupVaults on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackupVaults on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListBackupVaults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackupVaults.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListBackupVaultsOutput = $backup->ListBackupVaults(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $BackupVaultList = $ListBackupVaultsOutput->BackupVaultList;
    my $NextToken       = $ListBackupVaultsOutput->NextToken;

    # Returns a L<Paws::Backup::ListBackupVaultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListBackupVaults>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackupVaults in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

