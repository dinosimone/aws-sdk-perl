
package Paws::Backup::ExportBackupPlanTemplateOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw//;
  has BackupPlanTemplateJson => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupPlanTemplateJson' => {
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

Paws::Backup::ExportBackupPlanTemplateOutput

=head1 ATTRIBUTES


=head2 BackupPlanTemplateJson => Str

The body of a backup plan template in JSON format.

This is a signed JSON document that cannot be modified before being
passed to C<GetBackupPlanFromJSON.>


=head2 _request_id => Str


=cut

