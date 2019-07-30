package Paws::ApplicationInsights::ApplicationInfo;
  use Moose;
  has LifeCycle => (is => 'ro', isa => 'Str');
  has Remarks => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ApplicationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::ApplicationInfo object:

  $service_obj->Method(Att1 => { LifeCycle => $value, ..., ResourceGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::ApplicationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LifeCycle

=head1 DESCRIPTION

Describes the status of the application.

=head1 ATTRIBUTES


=head2 LifeCycle => Str

  The lifecycle of the application.


=head2 Remarks => Str

  The issues on the user side that are blocking Application Insights from
fully monitoring the application.


=head2 ResourceGroupName => Str

  The name of the resource group used for the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
