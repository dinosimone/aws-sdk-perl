# Generated from json/callargs_class.tt

package Paws::Datasync::DescribeLocationNfs;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has LocationArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeLocationNfs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Datasync::DescribeLocationNfsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LocationArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'LocationArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationNfs - Arguments for method DescribeLocationNfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationNfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationNfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationNfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationNfsResponse = $datasync->DescribeLocationNfs(
      LocationArn => 'MyLocationArn',

    );

    # Results:
    my $CreationTime = $DescribeLocationNfsResponse->CreationTime;
    my $LocationArn  = $DescribeLocationNfsResponse->LocationArn;
    my $LocationUri  = $DescribeLocationNfsResponse->LocationUri;
    my $MountOptions = $DescribeLocationNfsResponse->MountOptions;
    my $OnPremConfig = $DescribeLocationNfsResponse->OnPremConfig;

    # Returns a L<Paws::Datasync::DescribeLocationNfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationNfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

The Amazon resource Name (ARN) of the NFS location to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationNfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

