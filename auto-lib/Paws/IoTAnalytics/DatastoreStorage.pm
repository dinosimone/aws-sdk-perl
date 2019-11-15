package Paws::IoTAnalytics::DatastoreStorage;
  use Moose;
  has CustomerManagedS3 => (is => 'ro', isa => 'Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage', request_name => 'customerManagedS3', traits => ['NameInRequest']);
  has ServiceManagedS3 => (is => 'ro', isa => 'Paws::IoTAnalytics::ServiceManagedDatastoreS3Storage', request_name => 'serviceManagedS3', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatastoreStorage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatastoreStorage object:

  $service_obj->Method(Att1 => { CustomerManagedS3 => $value, ..., ServiceManagedS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatastoreStorage object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerManagedS3

=head1 DESCRIPTION

Where data store data is stored. You may choose one of
"serviceManagedS3" or "customerManagedS3" storage. If not specified,
the default is "serviceManagedS3". This cannot be changed after the
data store is created.

=head1 ATTRIBUTES


=head2 CustomerManagedS3 => L<Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage>

  Use this to store data store data in an S3 bucket that you manage. When
customer managed storage is selected, the "retentionPeriod" parameter
is ignored. The choice of service-managed or customer-managed S3
storage cannot be changed after creation of the data store.


=head2 ServiceManagedS3 => L<Paws::IoTAnalytics::ServiceManagedDatastoreS3Storage>

  Use this to store data store data in an S3 bucket managed by the AWS
IoT Analytics service. The choice of service-managed or
customer-managed S3 storage cannot be changed after creation of the
data store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

