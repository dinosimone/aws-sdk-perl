# Generated from json/callargs_class.tt

package Paws::CodeBuild::StopBuild;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopBuild');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeBuild::StopBuildOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Id' => 'id'
                     },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StopBuild - Arguments for method StopBuild on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopBuild on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StopBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopBuild.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StopBuildOutput = $codebuild->StopBuild(
      Id => 'MyNonEmptyString',

    );

    # Results:
    my $Build = $StopBuildOutput->Build;

    # Returns a L<Paws::CodeBuild::StopBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StopBuild>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the build.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopBuild in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

