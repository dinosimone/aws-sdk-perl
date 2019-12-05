package Paws::SageMaker::Trial;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::TrialSource');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrialArn => (is => 'ro', isa => 'Str');
  has TrialComponentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrialComponentSimpleSummary]');
  has TrialName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Trial

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Trial object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., TrialName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Trial object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

A summary of the properties of a trial as returned by the Search API.

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>

  


=head2 CreationTime => Str

  When the trial was created.


=head2 DisplayName => Str

  The name of the trial as displayed. If C<DisplayName> isn't specified,
C<TrialName> is displayed.


=head2 ExperimentName => Str

  The name of the experiment the trial is part of.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>

  


=head2 LastModifiedTime => Str

  Who last modified the trial.


=head2 Source => L<Paws::SageMaker::TrialSource>

  


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

  The list of tags that are associated with the trial. You can use Search
API to search on the tags.


=head2 TrialArn => Str

  The Amazon Resource Name (ARN) of the trial.


=head2 TrialComponentSummaries => ArrayRef[L<Paws::SageMaker::TrialComponentSimpleSummary>]

  A list of the components associated with the trial. For each component,
a summary of the component's properties is included.


=head2 TrialName => Str

  The name of the trial.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
