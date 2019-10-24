# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::SearchSystemTemplates;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemTemplateFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[IoTThingsGraph_SystemTemplateFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchSystemTemplates');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::SearchSystemTemplatesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::IoTThingsGraph::SystemTemplateFilter',
                              'type' => 'ArrayRef[IoTThingsGraph_SystemTemplateFilter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Filters' => 'filters',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchSystemTemplates - Arguments for method SearchSystemTemplates on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSystemTemplates on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method SearchSystemTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSystemTemplates.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $SearchSystemTemplatesResponse = $iotthingsgraph->SearchSystemTemplates(
      Filters => [
        {
          Name => 'FLOW_TEMPLATE_ID',    # values: FLOW_TEMPLATE_ID
          Value => [ 'MySystemTemplateFilterValue', ... ],

        },
        ...
      ],                                 # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchSystemTemplatesResponse->NextToken;
    my $Summaries = $SearchSystemTemplatesResponse->Summaries;

    # Returns a L<Paws::IoTThingsGraph::SearchSystemTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/SearchSystemTemplates>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[IoTThingsGraph_SystemTemplateFilter]

An array of filters that limit the result set. The only valid filter is
C<FLOW_TEMPLATE_ID>.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The string that specifies the next page of results. Use this when
you're paginating results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSystemTemplates in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

