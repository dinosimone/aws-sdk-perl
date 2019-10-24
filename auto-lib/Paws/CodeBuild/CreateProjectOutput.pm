# Generated from json/callresult_class.tt

package Paws::CodeBuild::CreateProjectOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_Project/;
  has Project => (is => 'ro', isa => CodeBuild_Project);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Project' => {
                              'class' => 'Paws::CodeBuild::Project',
                              'type' => 'CodeBuild_Project'
                            }
             },
  'NameInRequest' => {
                       'Project' => 'project'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateProjectOutput

=head1 ATTRIBUTES


=head2 Project => CodeBuild_Project

Information about the build project that was created.


=head2 _request_id => Str


=cut

1;