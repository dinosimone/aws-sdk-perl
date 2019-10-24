# Generated from default/object.tt
package Paws::S3Control::JobReport;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::S3Control::Types qw//;
  has Bucket => (is => 'ro', isa => Str);
  has Enabled => (is => 'ro', isa => Bool, required => 1);
  has Format => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has ReportScope => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ReportScope' => {
                                  'type' => 'Str'
                                },
               'Format' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Enabled' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobReport object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., ReportScope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobReport object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Contains the configuration parameters for a job-completion report.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The bucket where specified job-completion report will be stored.


=head2 B<REQUIRED> Enabled => Bool

  Indicates whether the specified job will generate a job-completion
report.


=head2 Format => Str

  The format of the specified job-completion report.


=head2 Prefix => Str

  An optional prefix to describe where in the specified bucket the
job-completion report will be stored. Amazon S3 will store the
job-completion report at
E<lt>prefixE<gt>/job-E<lt>job-idE<gt>/report.json.


=head2 ReportScope => Str

  Indicates whether the job-completion report will include details of all
tasks or only failed tasks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

