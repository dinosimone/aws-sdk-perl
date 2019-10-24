# Generated from json/callargs_class.tt

package Paws::WorkMail::CreateAlias;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has Alias => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EntityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OrganizationId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkMail::CreateAliasResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Alias' => {
                            'type' => 'Str'
                          },
               'OrganizationId' => {
                                     'type' => 'Str'
                                   },
               'EntityId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'Alias' => 1,
                    'OrganizationId' => 1,
                    'EntityId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateAlias - Arguments for method CreateAlias on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateAliasResponse = $workmail->CreateAlias(
      Alias          => 'MyEmailAddress',
      EntityId       => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The alias to add to the member set.



=head2 B<REQUIRED> EntityId => Str

The member (user or group) to which this alias is added.



=head2 B<REQUIRED> OrganizationId => Str

The organization under which the member (user or group) exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

