package Paws::Textract::NotificationChannel;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SNSTopicArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::NotificationChannel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::NotificationChannel object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SNSTopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::NotificationChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

The Amazon Simple Notification Service (Amazon SNS) topic to which
Amazon Textract publishes the completion status of an asynchronous
document operation, such as StartDocumentTextDetection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that gives Amazon
Textract publishing permissions to the Amazon SNS topic.


=head2 B<REQUIRED> SNSTopicArn => Str

  The Amazon SNS topic that Amazon Textract posts the completion status
to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

