# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_OutputUpdate KinesisAnalyticsV2_InputUpdate KinesisAnalyticsV2_ReferenceDataSourceUpdate/;
  has InputUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_InputUpdate]);
  has OutputUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_OutputUpdate]);
  has ReferenceDataSourceUpdates => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceUpdate]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputUpdates' => {
                                    'class' => 'Paws::KinesisAnalyticsV2::OutputUpdate',
                                    'type' => 'ArrayRef[KinesisAnalyticsV2_OutputUpdate]'
                                  },
               'ReferenceDataSourceUpdates' => {
                                                 'class' => 'Paws::KinesisAnalyticsV2::ReferenceDataSourceUpdate',
                                                 'type' => 'ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceUpdate]'
                                               },
               'InputUpdates' => {
                                   'class' => 'Paws::KinesisAnalyticsV2::InputUpdate',
                                   'type' => 'ArrayRef[KinesisAnalyticsV2_InputUpdate]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate object:

  $service_obj->Method(Att1 => { InputUpdates => $value, ..., ReferenceDataSourceUpdates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->InputUpdates

=head1 DESCRIPTION

Describes updates to the input streams, destination streams, and
reference data sources for an SQL-based Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 InputUpdates => ArrayRef[KinesisAnalyticsV2_InputUpdate]

  The array of InputUpdate objects describing the new input streams used
by the application.


=head2 OutputUpdates => ArrayRef[KinesisAnalyticsV2_OutputUpdate]

  The array of OutputUpdate objects describing the new destination
streams used by the application.


=head2 ReferenceDataSourceUpdates => ArrayRef[KinesisAnalyticsV2_ReferenceDataSourceUpdate]

  The array of ReferenceDataSourceUpdate objects describing the new
reference data sources used by the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

