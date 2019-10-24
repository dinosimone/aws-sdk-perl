# Generated from json/callargs_class.tt

package Paws::Lightsail::DeleteDomainEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_DomainEntry/;
  has DomainEntry => (is => 'ro', isa => Lightsail_DomainEntry, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteDomainEntry');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::DeleteDomainEntryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'DomainEntry' => {
                                  'class' => 'Paws::Lightsail::DomainEntry',
                                  'type' => 'Lightsail_DomainEntry'
                                }
             },
  'NameInRequest' => {
                       'DomainName' => 'domainName',
                       'DomainEntry' => 'domainEntry'
                     },
  'IsRequired' => {
                    'DomainName' => 1,
                    'DomainEntry' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteDomainEntry - Arguments for method DeleteDomainEntry on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomainEntry on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteDomainEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomainEntry.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteDomainEntryResult = $lightsail->DeleteDomainEntry(
      DomainEntry => {
        Id      => 'MyNonEmptyString',                               # OPTIONAL
        IsAlias => 1,                                                # OPTIONAL
        Name    => 'MyDomainName',                                   # OPTIONAL
        Options => { 'MyDomainEntryOptionsKeys' => 'Mystring', },    # OPTIONAL
        Target  => 'Mystring',
        Type    => 'MyDomainEntryType',                              # OPTIONAL
      },
      DomainName => 'MyDomainName',

    );

    # Results:
    my $Operation = $DeleteDomainEntryResult->Operation;

    # Returns a L<Paws::Lightsail::DeleteDomainEntryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteDomainEntry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainEntry => Lightsail_DomainEntry

An array of key-value pairs containing information about your domain
entries.



=head2 B<REQUIRED> DomainName => Str

The name of the domain entry to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomainEntry in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

