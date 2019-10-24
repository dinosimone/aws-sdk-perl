# Generated from callargs_class.tt

package Paws::DocDB::ModifyDBClusterParameterGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_Parameter/;
  has DBClusterParameterGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Parameters => (is => 'ro', isa => ArrayRef[DocDB_Parameter], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifyDBClusterParameterGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::DBClusterParameterGroupNameMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ModifyDBClusterParameterGroupResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::DocDB::Parameter',
                                 'type' => 'ArrayRef[DocDB_Parameter]'
                               },
               'DBClusterParameterGroupName' => {
                                                  'type' => 'Str'
                                                }
             },
  'IsRequired' => {
                    'Parameters' => 1,
                    'DBClusterParameterGroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBClusterParameterGroup - Arguments for method ModifyDBClusterParameterGroup on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBClusterParameterGroup on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method ModifyDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBClusterParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DBClusterParameterGroupNameMessage =
      $rds->ModifyDBClusterParameterGroup(
      DBClusterParameterGroupName => 'MyString',
      Parameters                  => [
        {
          AllowedValues => 'MyString',
          ApplyMethod =>
            'immediate',    # values: immediate, pending-reboot; OPTIONAL
          ApplyType            => 'MyString',
          DataType             => 'MyString',
          Description          => 'MyString',
          IsModifiable         => 1,            # OPTIONAL
          MinimumEngineVersion => 'MyString',
          ParameterName        => 'MyString',
          ParameterValue       => 'MyString',
          Source               => 'MyString',
        },
        ...
      ],

      );

    # Results:
    my $DBClusterParameterGroupName =
      $DBClusterParameterGroupNameMessage->DBClusterParameterGroupName;

    # Returns a L<Paws::DocDB::DBClusterParameterGroupNameMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to modify.



=head2 B<REQUIRED> Parameters => ArrayRef[DocDB_Parameter]

A list of parameters in the DB cluster parameter group to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBClusterParameterGroup in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

