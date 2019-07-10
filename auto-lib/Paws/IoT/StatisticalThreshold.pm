package Paws::IoT::StatisticalThreshold;
  use Moose;
  has Statistic => (is => 'ro', isa => 'Str', request_name => 'statistic', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StatisticalThreshold

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StatisticalThreshold object:

  $service_obj->Method(Att1 => { Statistic => $value, ..., Statistic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StatisticalThreshold object:

  $result = $service_obj->Method(...);
  $result->Att1->Statistic

=head1 DESCRIPTION

A statistical ranking (percentile) which indicates a threshold value by
which a behavior is determined to be in compliance or in violation of
the behavior.

=head1 ATTRIBUTES


=head2 Statistic => Str

  The percentile which resolves to a threshold value by which compliance
with a behavior is determined. Metrics are collected over the specified
period (C<durationSeconds>) from all reporting devices in your account
and statistical ranks are calculated. Then, the measurements from a
device are collected over the same period. If the accumulated
measurements from the device fall above or below
(C<comparisonOperator>) the value associated with the percentile
specified, then the device is considered to be in compliance with the
behavior, otherwise a violation occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

