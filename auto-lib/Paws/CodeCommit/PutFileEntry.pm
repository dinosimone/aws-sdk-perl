# Generated from default/object.tt
package Paws::CodeCommit::PutFileEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_SourceFileSpecifier/;
  has FileContent => (is => 'ro', isa => Str);
  has FileMode => (is => 'ro', isa => Str);
  has FilePath => (is => 'ro', isa => Str, required => 1);
  has SourceFile => (is => 'ro', isa => CodeCommit_SourceFileSpecifier);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileMode' => {
                               'type' => 'Str'
                             },
               'FilePath' => {
                               'type' => 'Str'
                             },
               'SourceFile' => {
                                 'class' => 'Paws::CodeCommit::SourceFileSpecifier',
                                 'type' => 'CodeCommit_SourceFileSpecifier'
                               },
               'FileContent' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FileMode' => 'fileMode',
                       'FilePath' => 'filePath',
                       'SourceFile' => 'sourceFile',
                       'FileContent' => 'fileContent'
                     },
  'IsRequired' => {
                    'FilePath' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutFileEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PutFileEntry object:

  $service_obj->Method(Att1 => { FileContent => $value, ..., SourceFile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PutFileEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->FileContent

=head1 DESCRIPTION

Information about a file that will be added or updated as part of a
commit.

=head1 ATTRIBUTES


=head2 FileContent => Str

  The content of the file, if a source file is not specified.


=head2 FileMode => Str

  The extrapolated file mode permissions for the file. Valid values
include EXECUTABLE and NORMAL.


=head2 B<REQUIRED> FilePath => Str

  The full path to the file in the repository, including the name of the
file.


=head2 SourceFile => CodeCommit_SourceFileSpecifier

  The name and full path of the file that contains the changes you want
to make as part of the commit, if you are not providing the file
content directly.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

