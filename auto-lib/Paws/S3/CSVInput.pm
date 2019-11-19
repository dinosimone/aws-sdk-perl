package Paws::S3::CSVInput;
  use Moose;
  has AllowQuotedRecordDelimiter => (is => 'ro', isa => 'Bool');
  has Comments => (is => 'ro', isa => 'Str');
  has FieldDelimiter => (is => 'ro', isa => 'Str');
  has FileHeaderInfo => (is => 'ro', isa => 'Str');
  has QuoteCharacter => (is => 'ro', isa => 'Str');
  has QuoteEscapeCharacter => (is => 'ro', isa => 'Str');
  has RecordDelimiter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CSVInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CSVInput object:

  $service_obj->Method(Att1 => { AllowQuotedRecordDelimiter => $value, ..., RecordDelimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CSVInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowQuotedRecordDelimiter

=head1 DESCRIPTION

Describes how a uncompressed comma-separated values (CSV)-formatted
input object is formatted.

=head1 ATTRIBUTES


=head2 AllowQuotedRecordDelimiter => Bool

  Specifies that CSV field values may contain quoted record delimiters
and such records should be allowed. Default value is FALSE. Setting
this value to TRUE may lower performance.


=head2 Comments => Str

  A single character used to indicate that a row should be ignored when
the character is present at the start of that row. You can specify any
character to indicate a comment line.


=head2 FieldDelimiter => Str

  A single character used to separate individual fields in a record. You
can specify an arbitrary delimiter.


=head2 FileHeaderInfo => Str

  Describes the first line of input. Valid values are:

=over

=item *

C<NONE>: First line is not a header.

=item *

C<IGNORE>: First line is a header, but you can't use the header values
to indicate the column in an expression. You can use column position
(such as _1, _2, E<hellip>) to indicate the column (C<SELECT s._1 FROM
OBJECT s>).

=item *

C<Use>: First line is a header, and you can use the header value to
identify a column in an expression (C<SELECT "name" FROM OBJECT>).

=back



=head2 QuoteCharacter => Str

  A single character used for escaping when the field delimiter is part
of the value. For example, if the value is C<a, b>, Amazon S3 wraps
this field value in quotation marks, as follows: C<" a , b ">.

Type: String

Default: C<">

Ancestors: C<CSV>


=head2 QuoteEscapeCharacter => Str

  A single character used for escaping the quotation mark character
inside an already escaped value. For example, the value """ a , b """
is parsed as " a , b ".


=head2 RecordDelimiter => Str

  A single character used to separate individual records in the input.
Instead of the default value, you can specify an arbitrary delimiter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

