package Paws::ServiceQuotas::RequestedServiceQuotaChange;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str');
  has Created => (is => 'ro', isa => 'Str');
  has DesiredValue => (is => 'ro', isa => 'Num');
  has GlobalQuota => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has QuotaArn => (is => 'ro', isa => 'Str');
  has QuotaCode => (is => 'ro', isa => 'Str');
  has QuotaName => (is => 'ro', isa => 'Str');
  has Requester => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::RequestedServiceQuotaChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::RequestedServiceQuotaChange object:

  $service_obj->Method(Att1 => { CaseId => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::RequestedServiceQuotaChange object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseId

=head1 DESCRIPTION

A structure that contains information about a requested change for a
quota.

=head1 ATTRIBUTES


=head2 CaseId => Str

  The case Id for the service quota increase request.


=head2 Created => Str

  The date and time when the service quota increase request was received
and the case Id was created.


=head2 DesiredValue => Num

  New increased value for the service quota.


=head2 GlobalQuota => Bool

  Identifies if the quota is global.


=head2 Id => Str

  The unique identifier of a requested service quota change.


=head2 LastUpdated => Str

  The date and time of the most recent change in the service quota
increase request.


=head2 QuotaArn => Str

  The Amazon Resource Name (ARN) of the service quota.


=head2 QuotaCode => Str

  Specifies the service quota that you want to use.


=head2 QuotaName => Str

  Name of the service quota.


=head2 Requester => Str

  The IAM identity who submitted the service quota increase request.


=head2 ServiceCode => Str

  Specifies the service that you want to use.


=head2 ServiceName => Str

  The name of the AWS service specified in the increase request.


=head2 Status => Str

  State of the service quota increase request.


=head2 Unit => Str

  Specifies the unit used for the quota.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

