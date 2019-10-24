# Generated from json/callargs_class.tt

package Paws::Glue::GetJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has JobName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobName' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'JobName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJob - Arguments for method GetJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetJobResponse = $glue->GetJob(
      JobName => 'MyNameString',

    );

    # Results:
    my $Job = $GetJobResponse->Job;

    # Returns a L<Paws::Glue::GetJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job definition to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

