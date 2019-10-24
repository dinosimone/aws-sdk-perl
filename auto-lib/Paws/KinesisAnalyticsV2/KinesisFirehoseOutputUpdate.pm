# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has ResourceARNUpdate => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceARNUpdate' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'ResourceARNUpdate' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate object:

  $service_obj->Method(Att1 => { ResourceARNUpdate => $value, ..., ResourceARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::KinesisFirehoseOutputUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARNUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, when
updating an output configuration using the UpdateApplication operation,
provides information about a Kinesis Data Firehose delivery stream that
is configured as the destination.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARNUpdate => Str

  The Amazon Resource Name (ARN) of the delivery stream to write to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

