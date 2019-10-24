# Generated from default/object.tt
package Paws::CodeCommit::Comment;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeCommit::Types qw//;
  has AuthorArn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has CommentId => (is => 'ro', isa => Str);
  has Content => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has Deleted => (is => 'ro', isa => Bool);
  has InReplyTo => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InReplyTo' => {
                                'type' => 'Str'
                              },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'AuthorArn' => {
                                'type' => 'Str'
                              },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Deleted' => {
                              'type' => 'Bool'
                            },
               'Content' => {
                              'type' => 'Str'
                            },
               'CommentId' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'InReplyTo' => 'inReplyTo',
                       'ClientRequestToken' => 'clientRequestToken',
                       'AuthorArn' => 'authorArn',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CreationDate' => 'creationDate',
                       'Deleted' => 'deleted',
                       'Content' => 'content',
                       'CommentId' => 'commentId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Comment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Comment object:

  $service_obj->Method(Att1 => { AuthorArn => $value, ..., LastModifiedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Comment object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorArn

=head1 DESCRIPTION

Returns information about a specific comment.

=head1 ATTRIBUTES


=head2 AuthorArn => Str

  The Amazon Resource Name (ARN) of the person who posted the comment.


=head2 ClientRequestToken => Str

  A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.


=head2 CommentId => Str

  The system-generated comment ID.


=head2 Content => Str

  The content of the comment.


=head2 CreationDate => Str

  The date and time the comment was created, in timestamp format.


=head2 Deleted => Bool

  A Boolean value indicating whether the comment has been deleted.


=head2 InReplyTo => Str

  The ID of the comment for which this comment is a reply, if any.


=head2 LastModifiedDate => Str

  The date and time the comment was most recently modified, in timestamp
format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

