# Generated from default/object.tt
package Paws::IoT::DynamoDBv2Action;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_PutItemInput/;
  has PutItem => (is => 'ro', isa => IoT_PutItemInput, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'PutItem' => {
                              'class' => 'Paws::IoT::PutItemInput',
                              'type' => 'IoT_PutItemInput'
                            }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'PutItem' => 'putItem'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'PutItem' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DynamoDBv2Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::DynamoDBv2Action object:

  $service_obj->Method(Att1 => { PutItem => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::DynamoDBv2Action object:

  $result = $service_obj->Method(...);
  $result->Att1->PutItem

=head1 DESCRIPTION

Describes an action to write to a DynamoDB table.

This DynamoDB action writes each attribute in the message payload into
it's own column in the DynamoDB table.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PutItem => IoT_PutItemInput

  Specifies the DynamoDB table to which the message data will be written.
For example:

C<{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": {
"tableName": "my-table" } } }>

Each attribute in the message payload will be written to a separate
column in the DynamoDB database.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access to the DynamoDB table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

