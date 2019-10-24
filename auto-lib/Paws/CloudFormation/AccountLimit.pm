# Generated from default/object.tt
package Paws::CloudFormation::AccountLimit;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudFormation::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Int'
                          },
               'Name' => {
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

Paws::CloudFormation::AccountLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::AccountLimit object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::AccountLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The AccountLimit data type. For more information about account limits,
see AWS CloudFormation Limits
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html)
in the I<AWS CloudFormation User Guide>.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the account limit.


=head2 Value => Int

  The value that is associated with the account limit name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

