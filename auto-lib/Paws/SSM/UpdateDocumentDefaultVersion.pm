# Generated from json/callargs_class.tt

package Paws::SSM::UpdateDocumentDefaultVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has DocumentVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDocumentDefaultVersion');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::UpdateDocumentDefaultVersionResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DocumentVersion' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'DocumentVersion' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocumentDefaultVersion - Arguments for method UpdateDocumentDefaultVersion on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocumentDefaultVersion on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateDocumentDefaultVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocumentDefaultVersion.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateDocumentDefaultVersionResult = $ssm->UpdateDocumentDefaultVersion(
      DocumentVersion => 'MyDocumentVersionNumber',
      Name            => 'MyDocumentName',

    );

    # Results:
    my $Description = $UpdateDocumentDefaultVersionResult->Description;

    # Returns a L<Paws::SSM::UpdateDocumentDefaultVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateDocumentDefaultVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentVersion => Str

The version of a custom document that you want to set as the default
version.



=head2 B<REQUIRED> Name => Str

The name of a custom document that you want to set as the default
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocumentDefaultVersion in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

